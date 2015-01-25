//Async Networking Event of Object: ObjServer
if(global.isServer) {
    serverAsync();
}
else {
    clientAsync();
}