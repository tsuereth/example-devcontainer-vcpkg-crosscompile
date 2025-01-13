cmake_minimum_required(VERSION 3.25)

project(HttpDemo)
add_executable(HttpDemo)

target_sources(HttpDemo PRIVATE main.cpp)

find_package(httplib CONFIG REQUIRED)
target_link_libraries(HttpDemo PRIVATE httplib::httplib)
if(MINGW)
    target_link_libraries(HttpDemo PRIVATE -lws2_32)
endif()

install(TARGETS HttpDemo RUNTIME DESTINATION bin)
if(MINGW)
    target_link_libraries(HttpDemo PRIVATE -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,-Bdynamic,--no-whole-archive)
    install(FILES $<TARGET_RUNTIME_DLLS:HttpDemo> TYPE BIN)
endif()

target_link_libraries(HttpDemo PRIVATE -static-libstdc++ -static-libgcc)
