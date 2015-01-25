//Client Script : ReceivedPacket
var buffer = argument[ 0 ];
var msgid = buffer_read( buffer , buffer_u8 );

switch( msgid ) {
 case actions.NEXT_LEVEL:
     room_goto_next();
 break;
}