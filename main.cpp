#include <httplib.h>

int main(void)
{
    httplib::Server server;

    server.Get("/hello", [](const httplib::Request& request, httplib::Response& response)
    {
        response.set_content("Hello, world!", "text/plain");
    });

    // This blocks forever; the server process must be killed to stop it.
    server.listen("0.0.0.0", 8080);

    return 0;
}
