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
	zomb=[basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener]
	mnum=30
	plant=[29]
	quest=true
	maxpf=2
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
if(room==quest7)
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
	action_set_alarm(3000, 1);
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
	action_set_alarm(3000, 1);
}
if(layer_background_get_sprite(bg)==tilerussia)
{
	moosic=moosic5
	hats=hats5
	action_set_alarm(4000, 1);
}
if(layer_background_get_sprite(bg)==tileunderground2)
{
	moosic=undergroundinst
	hats=undergrounddrums
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
if(room==quest7)
{
	moosic=loobboon
	hats=-1
}
if(room==quest8)
{
	moosic=ooftheroofkrima
	hats=hats1krima
}
if(room==quest9)
{
	moosic=ooftheroofkrima
	hats=hats1krima
}

waterlevel=0
nwaterlevel=0

depth=-100000

num=0

if(instance_exists(tiletypeunplantable))
{
	tiletypeunplantable.alarm[1]=60
}


aud1=audio_play_sound(moosic,1000,true)
aud2=audio_play_sound(hats,1000,true)
audio_sound_gain(hats,0.01,0)
video=false


lay=layer_create(100,"bgshit")

underground=false
plantfoods=0
maxpf=0