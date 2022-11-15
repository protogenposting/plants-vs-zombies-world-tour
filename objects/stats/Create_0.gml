sunny=50
randomize()
killed=10

dps=0

dpsy=0

i=0

idps=0

num=0

action_set_alarm(360, 0);
action_set_alarm(2, 1);
action_set_alarm(1000, 1);
if(room==endless4)
{
	action_set_alarm(2, 1);
	action_set_alarm(2000, 1);
}
if(room==endless6)
{
	action_set_alarm(2, 1);
	action_set_alarm(3000, 1);
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
if(room==quest5)
{
	action_set_alarm(120, 1);
}
if(room==quest6)
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
if(layer_background_get_sprite(bg)==tilesand)
{
	moosic=moosic4
	hats=hats4
}
if(layer_background_get_sprite(bg)==tilerussia)
{
	moosic=moosic5
	hats=hats5
}
if(layer_background_get_sprite(bg)==tiledesert)
{
	moosic=moosic6
	hats=hats6
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
if(room==quest5)
{
	moosic=loobboon
	hats=-1
}
if(room==quest6)
{
	moosic=loobboon
	hats=-1
}
aud1=audio_play_sound(moosic,1000,true)
aud2=audio_play_sound(hats,1000,true)
audio_sound_gain(hats,0.01,0)

waterlevel=0

depth=-100000

num=0

if(instance_exists(tiletypeunplantable))
{
	tiletypeunplantable.alarm[1]=60
}



mnum=999999999999999999
plant=[1]
if(room==quest1)
{
	mnum=10
	plant=[7]
}
if(room==quest2)
{
	mnum=30
	plant=[29]
}
if(room==quest3)
{
	mnum=20
	plant=[13]
}
if(room==quest4)
{
	mnum=30
	plant=[24]
}
if(room==quest5)
{
	mnum=20
	plant=[61]
}
if(room==quest6)
{
	mnum=7
	plant=[62]
}
if(room==level1)
{
	mnum=15
	plant=[2,3,4,5,6]
}
if(room==level2)
{
	mnum=15
	plant=[8]
}
if(room==level3)
{
	mnum=15
	plant=[9]
}
if(room==level4)
{
	mnum=15
	plant=[10]
}
if(room==level5)
{
	mnum=15
	plant=[11]
}
if(room==level6)
{
	mnum=15
	plant=[12]
}
if(room==level7)
{
	mnum=15
	plant=[14]
}
if(room==level8)
{
	mnum=15
	plant=[27]
}
if(room==level9)
{
	mnum=20
	plant=[28]
}
if(room==level10)
{
	mnum=20
	plant=[30]
}
if(room==level11)
{
	mnum=20
	plant=[31]
}
if(room==level12)
{
	mnum=20
	plant=[32]
}
if(room==level13)
{
	mnum=20
	plant=[34]
}
if(room==level14)
{
	mnum=20
	plant=[21]
}
if(room==level15)
{
	mnum=20
	plant=[22]
}
if(room==level16)
{
	mnum=20
	plant=[23]
}
if(room==level17)
{
	mnum=20
	plant=[35]
}
if(room==level18)
{
	mnum=20
	plant=[36]
}
if(room==level19)
{
	mnum=20
}