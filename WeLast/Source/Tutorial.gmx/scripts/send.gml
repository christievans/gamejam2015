//enum, x, y
var enumPassed = argument[0];
var xPassed = argument[1];
var yPassed = argument[2];

if((global.isServer && ds_list_size(ServerClient.SocketList) > 0) || !global.isServer) {
    
     {
        var buffer = ServerClient.Buffer;
        buffer_seek( buffer , buffer_seek_start , 0 );
        buffer_write( buffer , buffer_u8  , enumPassed );
        buffer_write( buffer , buffer_u32 , xPassed );
        buffer_write( buffer , buffer_u32 , yPassed );
    
        if global.isServer{       
            var Result = network_send_packet( ds_list_find_value( ServerClient.SocketList,0 ) , 
            buffer , buffer_tell(buffer));
        } else {
            var Result = network_send_packet( ServerClient.Socket , 
            buffer , buffer_tell(buffer));
        }
    }
}