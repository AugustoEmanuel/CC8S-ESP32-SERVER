/// The header file
#pragma once
#include <drogon/HttpController.h>
using namespace drogon;
namespace api
{
namespace v1
{
class SoftwareServer : public drogon::HttpController<SoftwareServer>
{
  public:
    METHOD_LIST_BEGIN
    METHOD_ADD(SoftwareServer::getListOfSoftware, "/software", Get);
    METHOD_ADD(SoftwareServer::getBinary, "/download/{id}", Get);
    METHOD_ADD(SoftwareServer::getBeatles, "/beatles", Get);
    METHOD_LIST_END

    void getListOfSoftware(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback);
    void getBeatles(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback);
    void getBinary(const HttpRequestPtr &req, std::function<void(const HttpResponsePtr &)> &&callback, int gameId);
};
}
}