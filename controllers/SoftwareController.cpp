#include "SoftwareController.hh"
#include <string>
#include <fstream>

//ISSO DEVERIA SER EM UM DB, MAS EU TO COM MT PREGUIÇA NA MORAL, É UMA POC PO, RELEVA
const std::vector<std::pair<int, std::string>> gameList = {
    {1, "PETSCII ROBOTS DEMO?"},
    {2, "VERY SIMPLE 3D DEMO"},
    {3, "AMIGA BALL DEMO"},
};

void api::v1::SoftwareServer::getListOfSoftware(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback)
{
    Json::Value ret;
    for (const auto& game : gameList) {
        Json::Value item;
        item["id"] = game.first;
        item["name"] = game.second;
        ret.append(item);
    }
    auto resp = HttpResponse::newHttpJsonResponse(ret);
    LOG_DEBUG << "OLA";
    callback(resp);
}

//PROBLEMAS DE LANTENCIA, DESCONTINUADO
void api::v1::SoftwareServer::getBeatles(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback)
{
    std::string firmwarePath = "beatles_compressed.bin";

    std::ifstream firmwareFile(firmwarePath, std::ios::binary);
    if (!firmwareFile)
    {
        auto res = HttpResponse::newHttpResponse();
        res->setStatusCode(k404NotFound);
        callback(res);
        return;
    }

    std::vector<char> buffer((std::istreambuf_iterator<char>(firmwareFile)), std::istreambuf_iterator<char>());

    LOG_DEBUG << std::string(buffer.begin(), buffer.end()).size();
    
    auto res = HttpResponse::newHttpResponse();
    res->setBody(std::string(buffer.begin(), buffer.end()));
    res->setContentTypeCode(CT_APPLICATION_OCTET_STREAM);
    res->setStatusCode(k200OK);

    callback(res);
}

void api::v1::SoftwareServer::getBinary(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback, int gameId)
{

    std::string firmwarePath;

    LOG_DEBUG << gameId;
    
    switch(gameId){
        case 0:
            firmwarePath = "petscii.bin";
            break;
        case 1:
            firmwarePath = "3d.bin";
            break;
        case 2:
            firmwarePath = "ball.bin";
            break;
        default:
            auto res = HttpResponse::newHttpResponse();
            res->setStatusCode(k404NotFound);
            callback(res);
            return;
    }

    std::ifstream firmwareFile(firmwarePath, std::ios::binary);
    if (!firmwareFile)
    {
        auto res = HttpResponse::newHttpResponse();
        res->setStatusCode(k500InternalServerError);
        callback(res);
        return;
    }

    std::vector<char> buffer((std::istreambuf_iterator<char>(firmwareFile)), std::istreambuf_iterator<char>());
    
    auto res = HttpResponse::newHttpResponse();
    res->setBody(std::string(buffer.begin(), buffer.end()));
    res->setContentTypeCode(CT_APPLICATION_OCTET_STREAM);
    res->setStatusCode(k200OK);

    callback(res);
}
