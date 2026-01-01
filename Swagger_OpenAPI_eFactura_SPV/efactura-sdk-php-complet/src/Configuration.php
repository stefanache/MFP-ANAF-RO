<?php
namespace Efatura;

class Configuration {
    private static $accessToken;

    public static function getAccessToken() {
        return self::$accessToken;
    }

    public static function setAccessToken($token) {
        self::$accessToken = $token;
    }
}
