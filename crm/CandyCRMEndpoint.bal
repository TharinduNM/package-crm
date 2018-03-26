package crm;

import ballerina.io;
import ballerina/net.http;

public struct CandyConfiguration {
    string token;
    ClientEndpointConfiguration clientConfig;
}

public function <CandyConfiguration candyConfig> CandyConfiguration() {
    candyConfig.clientConfig = {};
}

public struct CandyCRMEndpoint {
    http:ClientEndpoint httpClient;
    CandyConfiguration candyConfig;
    ConnectorCandyCRM candyConnector;
}

public function <CandyCRMEndpoint ep> init (CandyConfiguration candyConfig) {
    ep.httpClient = {};
    ep.httpClient.config = candyConfig.clientConfig;
    candyConnector.token = candyConfig.token;
}

public function <CandyCRMEndpoint ep> register(typedesc serviceType) {

}

public function <CandyCRMEndpoint ep> start() {

}

@Description { value:"Returns the connector that client code uses"}
@Return { value:"The connector that client code uses" }
public function <CandyCRMEndpoint ep> getClient() returns ConnectorCandyCRM {
    return ep.candyConnector;
}

@Description { value:"Stops the registered service"}
@Return { value:"Error occured during registration" }
public function <CandyCRMEndpoint ep> stop() {

}
