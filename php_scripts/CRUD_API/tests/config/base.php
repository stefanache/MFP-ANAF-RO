<?php

include_once 'controller.php';

$settings = [
    'database' => 'incorrect_database',
    'username' => 'incorrect_username',
    'password' => 'incorrect_password',
    'mapping' => 'abc_posts.abc_id=posts.id,abc_posts.abc_user_id=posts.user_id,abc_posts.abc_category_id=posts.category_id,abc_posts.abc_content=posts.content',
    'controllers' => 'records,columns,cache,openapi,geojson,status',
    'middlewares' => 'sslRedirect,xml,cors,json,reconnect,apiKeyAuth,apiKeyDbAuth,dbAuth,jwtAuth,basicAuth,authorization,sanitation,validation,ipAddress,multiTenancy,pageLimits,joinLimits,textSearch,customization',
    'apiKeyAuth.mode' => 'optional',
    'apiKeyAuth.keys' => '123456789abc',
    'apiKeyDbAuth.mode' => 'optional',
    'apiKeyDbAuth.header' => 'X-API-Key-DB',
    'dbAuth.mode' => 'optional',
    'dbAuth.returnedColumns' => 'id,username,password',
    'dbAuth.registerUser' => '1',
    'dbAuth.passwordLength' => '4',
    'jwtAuth.mode' => 'optional',
    'jwtAuth.time' => '1538207605',
    'jwtAuth.secrets' => 'axpIrCGNGqxzx2R9dtXLIPUSqPo778uhb8CA0F4Hx',
    'basicAuth.mode' => 'optional',
    'basicAuth.passwordFile' => __DIR__ . DIRECTORY_SEPARATOR . '.htpasswd',
    'reconnect.databaseHandler' => function () {
        return 'php-crud-api';
    },
    'reconnect.usernameHandler' => function () {
        return 'php-crud-api';
    },
    'reconnect.passwordHandler' => function () {
        return 'php-crud-api';
    },
    'authorization.tableHandler'  => function ($operation, $tableName) {
        return !($tableName == 'invisibles' && !isset($_SESSION['claims']['name']) && empty($_SESSION['username']) && empty($_SESSION['user']) && empty($_SESSION['apiKey']) && empty($_SESSION['apiUser']));
    },
    'authorization.columnHandler' => function ($operation, $tableName, $columnName) {
        return !($columnName == 'invisible');
    },
    'authorization.recordHandler' => function ($operation, $tableName) {
        return ($tableName == 'comments') ? 'filter=message,neq,invisible' : '';
    },
    'ipAddress.tables' => 'barcodes',
    'ipAddress.columns' => 'ip_address',
    'sanitation.handler' => function ($operation, $tableName, $column, $value) {
        return is_string($value) ? strip_tags($value) : $value;
    },
    'sanitation.tables' => 'forgiving',
    'validation.handler' => function ($operation, $tableName, $column, $value, $context) {
        return ($column['name'] == 'post_id' && !is_numeric($value)) ? 'must be numeric' : true;
    },
    'multiTenancy.handler' => function ($operation, $tableName) {
        return ($tableName == 'kunsthåndværk') ? ['user_id' => 1] : [];
    },
    'pageLimits.pages' => 5,
    'pageLimits.records' => 10,
    'joinLimits.depth' => 2,
    'joinLimits.tables' => 4,
    'joinLimits.records' => 10,
    'textSearch.parameter' => 'q',
    'customization.beforeHandler' => function ($operation, $tableName, $request, $environment) {
        $environment->start = 0.003/*microtime(true)*/;
    },
    'customization.afterHandler' => function ($operation, $tableName, $response, $environment) {
        if ($tableName == 'kunsthåndværk' && $operation == 'increment') {
            return $response->withHeader('X-Time-Taken', 0.006/*microtime(true)*/ - $environment->start);
        }
    },
    'json.controllers' => 'records',
    'json.tables' => 'products',
    'json.columns' => 'properties',
    'customControllers' => 'MyHelloController',
    'debug' => false,
];
