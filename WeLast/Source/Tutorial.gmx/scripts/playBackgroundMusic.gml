global.main_bgm=snd_background1;//set the sound to be played
if not sound_isplaying(global.main_bgm)//first checks if sound is playing or not
    sound_loop(global.main_bgm);//then it plays it
