global.main_bgm=snd_background1;//set the sound to be played
if not sound_isplaying(global.main_bgm)//first checks if sound is playing or not
    audio_play_sound(global.main_bgm,1,true);//then it plays it
