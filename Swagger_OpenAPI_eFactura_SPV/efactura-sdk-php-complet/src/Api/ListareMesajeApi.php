<?php
namespace Efatura\Api;

use Efatura\Configuration;
use GuzzleHttp\Client;

class ListareMesajeApi {
    private $client;
    private $baseUrl = "https://webserviceapl.anaf.ro/prod/FCTEL/rest/listareMesaje";

    public function __construct(Client $client = null) {
        $this->client = $client ?: new Client();
    }

    public function list($inbox = 'inbox') {
        $token = Configuration::getAccessToken();
        $response = $this->client->get($this->baseUrl, [
            'headers' => ['Authorization' => "Bearer $token"],
            'query' => ['inbox' => $inbox]
        ]);
        return json_decode($response->getBody(), true);
    }
}
