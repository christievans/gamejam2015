//enum, x, y

room_goto_next()

if(global.isServer == true) {
    
    if(ds_list_size(ServerClient.SocketList) > 0) {
    
        var buffer = ServerClient.Buffer;
        buffer_seek( buffer , buffer_seek_start , 0 );
        buffer_write( buffer , buffer_u8  , ids.ACTION );
        buffer_write( buffer , buffer_u8  , actions.NEXT_LEVEL );
    
        var Result = network_send_packet( ds_list_find_value( ServerClient.SocketList,0 ) , 
        buffer , buffer_tell(buffer));
    }
}