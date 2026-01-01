<?php
namespace Efatura\Api;

use Efatura\Configuration;
use GuzzleHttp\Client;

class ConvertXmlToPdfApi {
    private $client;
    private $baseUrl = "https://webserviceapl.anaf.ro/prod/FCTEL/rest/convertXMLtoPDF";

    public function __construct(Client $client = null) {
        $this->client = $client ?: new Client();
    }

    public function convert($xmlInvoice) {
        $token = Configuration::getAccessToken();
        $response = $this->client->post($this->baseUrl, [
            'headers' => [
                'Authorization' => "Bearer $token",
                'Content-Type' => 'application/xml'
            ],
            'body' => $xmlInvoice
        ]);
        return $response->getBody()->getContents();
    }
}
