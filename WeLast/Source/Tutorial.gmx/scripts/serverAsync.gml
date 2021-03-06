var type_event = ds_map_find_value( async_load , "type" );


switch( type_event ) {
 case network_type_connect:
    var socket = ds_map_find_value( async_load , "socket" );
    ds_list_add( SocketList , socket );
    global.player2Connected = true;
    // Client connected on level 2, create them
    if (instance_exists(obj_lv2_player) == true){
        p2 = instance_create(2242,990,obj_lv2_player);
        p2.isServerPlayer = false;
    }
 break;
 case network_type_disconnect:
    var socket = ds_map_find_value( async_load , "socket" );
    var findsocket = ds_list_find_index( SocketList , socket );
    if ( findsocket >= 0 ) {
        ds_list_delete( SocketList , findsocket );
 }
 break;
 case network_type_data:
    var buffer = ds_map_find_value( async_load , "buffer" );
    var socket = ds_map_find_value( async_load , "id" );
    buffer_seek( buffer , buffer_seek_start , 0 );
    serverReceivedPacket( buffer , socket );
 break;
}