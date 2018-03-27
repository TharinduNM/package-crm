package crm;

import ballerina/io;

public function main (string[] args) {
    endpoint CandyCRMEndpoint crmEP {
        token: "fgfg1",
        clientConfig: {}
    };
    _ = crmEP->getOrganization("wso2");
}




