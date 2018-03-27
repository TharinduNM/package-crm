package crm;

import ballerina/io;
import ballerina/net.http;

public struct CandyConfiguration {
    string token;
    http:ClientEndpointConfiguration clientConfig;
    string uri;
}

public function <CandyConfiguration candyConfig> CandyConfiguration() {
    candyConfig.clientConfig = {};
}

public struct CandyCRMEndpoint {
    CandyConfiguration candyConfig;
    CandyCRMConnector candyConnector;
}

public function <CandyCRMEndpoint ep> init (CandyConfiguration candyConfig) {
    ep.candyConnector = { token:candyConfig.token,
                            httpClient: http:createHttpClient(candyConfig.uri, candyConfig.clientConfig) };
    httpClientGlobal = http:createHttpClient(candyConfig.uri, candyConfig.clientConfig);
    //ep.candyConnector.token = candyConfig.token;
}

public function <CandyCRMEndpoint ep> register(typedesc serviceType) {

}

public function <CandyCRMEndpoint ep> start() {

}

@Description { value:"Returns the connector that client code uses"}
@Return { value:"The connector that client code uses" }
public function <CandyCRMEndpoint ep> getClient() returns CandyCRMConnector {
    return ep.candyConnector;
}

@Description { value:"Stops the registered service"}
@Return { value:"Error occured during registration" }
public function <CandyCRMEndpoint ep> stop() {

}
