<?php
namespace Efatura\Api;

use Efatura\Configuration;
use GuzzleHttp\Client;

class StareMesajApi {
    private $client;
    private $baseUrl = "https://webserviceapl.anaf.ro/prod/FCTEL/rest/stareMesaj";

    public function __construct(Client $client = null) {
        $this->client = $client ?: new Client();
    }

    public function getStatus($messageId) {
        $token = Configuration::getAccessToken();
        $response = $this->client->get($this->baseUrl, [
            'headers' => ['Authorization' => "Bearer $token"],
            'query' => ['messageId' => $messageId]
        ]);
        return json_decode($response->getBody(), true);
    }
}
