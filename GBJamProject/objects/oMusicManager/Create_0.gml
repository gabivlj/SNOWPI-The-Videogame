//Music will be random in each room 
audio_stop_all();
musicRandomize = irandom(3);

switch (musicRandomize)
{
    case 0:
        audio_play_sound(sndTheme,1,true);
		audioGame=sndTheme;
        break;
    case 1:
		audio_play_sound(sndSong,1,true);
		audioGame=sndSong;
        break;
    case 2:
		audio_play_sound(sndSong2,1,true);
		audioGame=sndSong2;
        break;
    case 3:
		audio_play_sound(sndSong3,1,true);
		audioGame=sndSong3;
        break;
    default:
        audio_play_sound(sndTheme,1,true);
		audioGame=sndTheme;
        break;
}

