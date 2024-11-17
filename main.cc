#include <drogon/drogon.h>
#include "controllers/SoftwareController.hh"

int main() {
    //Set HTTP listener address and port
    drogon::app().addListener("0.0.0.0", 7777);
    //Load config file
    //drogon::app().loadConfigFile("../config.json");
    //drogon::app().loadConfigFile("../config.yaml");
    //Run HTTP framework,the method will block in the internal event loop

    // Register routes
    drogon::app().registerHandler("/software", 
        &api::v1::SoftwareServer::getListOfSoftware, 
        {drogon::Get});

    // Register binary endpoint (if necessary)
    drogon::app().registerHandler("/download/{id}", 
        &api::v1::SoftwareServer::getBinary, 
        {drogon::Get});

    drogon::app().registerHandler("/beatles", 
        &api::v1::SoftwareServer::getBeatles, 
        {drogon::Get});

    drogon::app().run();
    return 0;
}
