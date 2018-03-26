package test;

import ballerina/io;

public function main (string[] args) {
    endpoint crm:CandyCRMEndpoint crmEP {
        token: "fgfg",
        config: {}
    };
    crmEP->getOrganization("wso2");
}
