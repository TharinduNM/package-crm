package crm;

import ballerina/io;
import ballerina/net.http;


public struct CandyCRMConnectorError {
    string errorMsg;
}

public struct Organization {
    string organizationName;
    string organizationId;
}

public struct CandyCRMConnector {
    string token;
}

public function <CandyCRMConnector candyConnector> getOrganization (string organizationName) returns (Organization | CandyCRMConnectorError){
    string uri = "http://example.com/";
    //uri = uri + organizationName;
    //set token
    //  Request request = {};
    //  Response res =? httpClient->get(uri, request);
    io:println("called example.com");
    Organization org = {};
    org.organizationName = "wso2.com";
    org.organizationId = "123456";
    return org;
}