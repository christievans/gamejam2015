//Client Script : ReceivedPacket
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
        p1 = instance_find(obj_lv2_player,0);
        p1.x = buffer_read(buffer, buffer_s32);
        p1.y = buffer_read(buffer, buffer_s32);
    }
 break;
 case ids.BOAT_POS:
    obj_boat.x = buffer_read(buffer, buffer_s32);
    obj_boat.y = buffer_read(buffer, buffer_s32);
 break;
 case ids.ICEBERG:
    icex = buffer_read(buffer, buffer_s32);
    icey = buffer_read(buffer, buffer_s32);
    instance_create(icex,icey, obj_iceberg_2);
    //instance_create(-100,300,obj_iceberg_2);
 break;
 case ids.ACTION:
    clientReceivedAction();
    //room_goto_next();
 break;
}