sunny=50
randomize()
killed=10

action_set_alarm(360, 0);
action_set_alarm(2, 1);
action_set_alarm(1000, 1);

moosic=ooftheroof
hats=hats1
if(room==endless2)
{
	moosic=moosic2
	hats=hats2
}
audio_play_sound(moosic,1000,true)
audio_play_sound(hats,1000,true)
audio_sound_gain(hats,0.01,0)

waterlevel=0