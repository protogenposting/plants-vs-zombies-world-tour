sunny=50
randomize()
killed=10

dps=0

dpsy=0

i=0

idps=0

action_set_alarm(360, 0);
action_set_alarm(2, 1);
action_set_alarm(1000, 1);
if(room==endless4)
{
	action_set_alarm(2, 1);
	action_set_alarm(2000, 1);
}
if(room==quest1)
{
	action_set_alarm(120, 1);
}
if(room==quest2)
{
	action_set_alarm(120, 1);
}
if(room==quest3)
{
	action_set_alarm(120, 1);
}

moosic=ooftheroof
hats=hats1
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tilemud)
{
	moosic=moosic2
	hats=hats2
}
if(layer_background_get_sprite(bg)==tilevolcano)
{
	moosic=moosic3
	hats=hats3
}
if(room==quest1)
{
	moosic=loobboon
	hats=-1
}
if(room==quest3)
{
	moosic=loobboon
	hats=-1
}
if(room==quest2)
{
	moosic=loobboon
	hats=-1
	killed=30
}
audio_play_sound(moosic,1000,true)
audio_play_sound(hats,1000,true)
audio_sound_gain(hats,0.01,0)

waterlevel=0

depth=-100000

num=0