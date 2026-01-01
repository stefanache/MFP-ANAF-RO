<?php
namespace Efatura\Api;

use Efatura\Configuration;
use GuzzleHttp\Client;

class DescarcareFacturaApi {
    private $client;
    private $baseUrl = "https://webserviceapl.anaf.ro/prod/FCTEL/rest/descarcareFactura";

    public function __construct(Client $client = null) {
        $this->client = $client ?: new Client();
    }

    public function download($messageId) {
        $token = Configuration::getAccessToken();
        $response = $this->client->get($this->baseUrl, [
            'headers' => ['Authorization' => "Bearer $token"],
            'query' => ['messageId' => $messageId]
        ]);
        return $response->getBody()->getContents();
    }
}
