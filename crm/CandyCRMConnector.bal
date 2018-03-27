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

public struct Lead {
    string name;
    string phoneNumber;
}

public struct CandyCRMConnector {
    string token;
    http:HttpClient httpClient;
}

http:HttpClient httpClientGlobal = {};

public function <CandyCRMConnector candyConnector> getOrganization (string organizationName) returns (Organization | CandyCRMConnectorError){
    string uri = "http://example.com/";
    //uri = uri + organizationName;
    //set token
    http:Request request = {};
    match candyConnector.httpClient.get(uri, request) {
        http:Response => {int x=0;}
        http:HttpConnectorError => {int x=0;}
    }
    io:println("Retrieved organization");
    Organization org = {};
    org.organizationName = "wso2.com";
    org.organizationId = "123456";
    return org;
}

public function <CandyCRMConnector candyConnector> getLeads (string organizationName) returns (Lead[] | CandyCRMConnectorError){
    string uri = "http://example.com/";
    //uri = uri + orgnizationName + "leads";
    //set token
    http:Request request = {};
    match candyConnector.httpClient.get(uri, request) {
        http:Response => {
                          io:println("Retrieved leads");
                          Lead[] leads = [];
                          leads[0].name = "wso2.com";
                          leads[0].phoneNumber = "123456";
                          return leads;
        }
        http:HttpConnectorError => {
            io:println("Retrieved leads ***");
            CandyCRMConnectorError err = {errorMsg:"This is a fake call anyway"};
            return err;
        }
    }
}






