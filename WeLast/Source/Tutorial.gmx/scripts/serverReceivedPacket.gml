//Server Script : ReceivedPacket
var buffer = argument[ 0 ];
var msgid = buffer_read( buffer , buffer_u8 );

switch( msgid ) {
// case 1:
// var time = buffer_read( buffer , buffer_u32 );
// var Ping = current_time - time;
// break;
 case ids.PLAYER1_POS:
    if (instance_exists(obj_player) == true){
        obj_player.x = buffer_read(buffer, buffer_s32);
        obj_player.y = buffer_read(buffer, buffer_s32);
    } else if (instance_exists(obj_lv2_player) == true){
        // Client is sending us their location
        p1 = instance_find(obj_lv2_player,1);
        p1.x = buffer_read(buffer, buffer_s32);
        p1.y = buffer_read(buffer, buffer_s32);
    }
 break;
 }
