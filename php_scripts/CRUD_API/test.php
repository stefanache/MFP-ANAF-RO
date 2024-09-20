<?php

use Tqdev\PhpCrudApi\Api;
use Tqdev\PhpCrudApi\Config\Config;
use Tqdev\PhpCrudApi\Database\GenericDB;
use Tqdev\PhpCrudApi\RequestFactory;
use Tqdev\PhpCrudApi\ResponseUtils;

error_reporting(-1);
require 'api.include.php';

function runDir(Config $config, string $dir, array $matches, string $category): array
{
    $success = 0;
    $skipped = 0;
    $failed = 0;
    $entries = scandir($dir);
    foreach ($entries as $entry) {
        if ($entry === '.' || $entry === '..') {
            continue;
        }
        if (isset($matches[0])) {
            if (!preg_match('/' . $matches[0] . '/', $entry)) {
                continue;
            }
        }
        $file = "$dir/$entry";
        if (is_file($file)) {
            if (substr($entry, -4) != '.log') {
                continue;
            }
            $statistics = runTest($config, $file, $category);
            $success += $statistics['success'];
            $skipped += $statistics['skipped'];
            $failed += $statistics['failed'];
        } elseif (is_dir($file)) {
            $statistics = runDir($config, $file, array_slice($matches, 1), "$category/$entry");
            $success += $statistics['success'];
            $skipped += $statistics['skipped'];
            $failed += $statistics['failed'];
        }
    }
    return compact('success', 'skipped', 'failed');
}

function runTest(Config $config, string $file, string $category): array
{
    $success = 1;
    $skipped = 0;
    $failed = 0;
    $title = ucwords(str_replace('_', ' ', $category)) . '/';
    $title .= ucwords(str_replace('_', ' ', substr(basename($file), 0, -4)));
    $line1 = "=====[$title]=====";
    $len = strlen($line1);
    $line2 = str_repeat("=", $len);
    $parts = preg_split('/^[=]+([\r\n]+|$)/m', file_get_contents($file));
    $headers = explode("\n", $parts[0]);
    $driver = $config->getDriver();
    foreach ($headers as $header) {
        if (!strpos($header, ':')) {
            continue;
        }
        list($key, $value) = explode(':', strtolower($header));
        if ($key == "skip-for-$driver") {
            $skipped = 1;
            $success = 0;
        }
        if ($key == "skip-always") {
            $skipped = 1;
            $success = 0;
        }
    }
    if (!$skipped) {
        $dirty = false;
        for ($i = 1; $i < count($parts); $i += 2) {
            $recording = false;
            if (empty($parts[$i + 1])) {
                if (substr($parts[$i], -1) != "\n") {
                    $parts[$i] .= "\n";
                }
                $parts[$i + 1] = '';
                $recording = true;
                $dirty = true;
            }
            $in = $parts[$i];
            $exp = $parts[$i + 1];
            $api = new Api($config);
            $out = ResponseUtils::toString($api->handle(RequestFactory::fromString($in)));
            if ($recording) {
                $parts[$i + 1] = $out;
            } else if ($out != $exp) {
                echo "$line1\n$exp\n$line2\n$out\n$line2\n";
                $failed = 1;
                $success = 0;
            }
        }
        if ($dirty) {
            file_put_contents($file, implode("===\n", $parts));
        }
    }
    return compact('success', 'skipped', 'failed');
}

function getDatabase(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.databaseHandler'))) {
        return $config->getDatabase();
    }
    return $config->getProperty('reconnect.databaseHandler')();
}

function getCommand(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.commandHandler'))) {
        return $config->getCommand();
    }
    return $config->getProperty('reconnect.commandHandler')();
}

function getTables(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.tablesHandler'))) {
        return $config->getTables();
    }
    return $config->getProperty('reconnect.tablesHandler')();
}

function getMapping(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.mappingHandler'))) {
        return $config->getMapping();
    }
    return $config->getProperty('reconnect.mappingHandler')();
}

function getUsername(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.usernameHandler'))) {
        return $config->getUsername();
    }
    return $config->getProperty('reconnect.usernameHandler')();
}

function getPassword(Config $config)
{
    if (!is_callable($config->getProperty('reconnect.passwordHandler'))) {
        return $config->getPassword();
    }
    return $config->getProperty('reconnect.passwordHandler')();
}

function loadFixture(string $dir, Config $config)
{
    $driver = $config->getDriver();
    $filename = "$dir/fixtures/blog_$driver.sql";
    $file = file_get_contents($filename);
    $db = new GenericDB(
        $config->getDriver(),
        $config->getAddress(),
        $config->getPort(),
        getDatabase($config),
        getCommand($config),
        getTables($config),
        getMapping($config),
        getUsername($config),
        getPassword($config),
        $config->getGeometrySrid()
    );
    $pdo = $db->pdo();
    $file = preg_replace('/--.*$/m', '', $file);
    if ($driver == 'sqlsrv') {
        $statements = preg_split('/\n\s*GO\s*\n/s', $file);
    } else {
        $statements = preg_split('/(?<=;)\n/s', $file);
    }
    foreach ($statements as $i => $statement) {
        $statement = trim($statement);
        if ($statement) {
            try {
                $pdo->exec($statement);
            } catch (\PDOException $e) {
                $error = print_r($pdo->errorInfo(), true);
                $statement = var_export($statement, true);
                echo "Loading '$filename' failed on statemement #$i:\n$statement\nwith error:\n$error\n";
                exit(1);
            }
        }
    }
}

function run(array $drivers, string $dir, array $matches)
{
    foreach ($drivers as $driver) {
        if (isset($matches[0])) {
            if (!preg_match('/' . $matches[0] . '/', $driver)) {
                continue;
            }
        }
        if (!extension_loaded("pdo_$driver")) {
            echo sprintf("%s: skipped, driver not loaded\n", $driver);
            continue;
        }
        $settings = [];
        include "$dir/config/base.php";
        include sprintf("$dir/config/%s.php", $driver);
        $config = new Config($settings);
        loadFixture($dir, $config);
        $start = microtime(true);
        $statistics = runDir($config, "$dir/functional", array_slice($matches, 1), '');
        $end = microtime(true);
        $time = ($end - $start) * 1000;
        $success = $statistics['success'];
        $skipped = $statistics['skipped'];
        $failed = $statistics['failed'];
        $total = $success + $skipped + $failed;
        echo sprintf("%s: %d tests ran in %d ms, %d skipped, %d failed\n", $driver, $total, $time, $skipped, $failed);
    }
}

run(['mysql', 'pgsql', 'sqlsrv', 'sqlite'], __DIR__ . '/tests', array_slice($argv, 1));
