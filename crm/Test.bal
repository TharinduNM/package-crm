package crm;

import ballerina/io;

public function main (string[] args) {

    endpoint CandyCRMEndpoint crmEP {
        token: "XY789UIO",
        uri : "http://example.com",
        clientConfig: {} //httpConfig
    };

    _ = crmEP->getOrganization("wso2");
    _ = crmEP->getLeads("wso2");

}






