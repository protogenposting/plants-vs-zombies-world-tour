/// @description Insert description here
// You can write your code in this editor

audio_sound_set_track_position(aud2,audio_sound_get_track_position(aud1))

i-=1
if(i<=0)
{
dps=0
i=room_speed
}
ecs=room_width
why=room_height/2
inst=instance_create(ecs,why,tiletypewater)
inst.image_xscale=waterlevel*2
inst.image_yscale=room_height/64
inst.alarm[0]=2

if(room==level1&&num>=10)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[2].unlocked=true
	plants.plant[3].unlocked=true
	plants.plant[4].unlocked=true
	plants.plant[5].unlocked=true
	plants.plant[6].unlocked=true
}
if(room==level2&&num>=15)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[8].unlocked=true
}
if(room==level3&&num>=15)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[9].unlocked=true
}
if(room==level4&&num>=15)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[10].unlocked=true
}
if(room==level5&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[11].unlocked=true
}
if(room==level6&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[12].unlocked=true
}
if(room==level7&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[14].unlocked=true
}
if(room==level8&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[27].unlocked=true
}
if(room==level9&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[32].unlocked=true
}
if(room==level10&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[30].unlocked=true
}
if(room==level11&&num>=25)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	plants.plant[31].unlocked=true
}
if(room==quest1&&num>=20)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto(title)
	plants.plant[7].unlocked=true
}
if(room==quest2&&num>=20)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto(menu)
	plants.plant[29].unlocked=true
}
if(room==quest3&&num>=20)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto(title)
	plants.plant[13].unlocked=true
}
if(room==quest4&&num>=20)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(title)
	room_goto(title)
	plants.plant[24].unlocked=true
}
if(room==quest5&&num>=30)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(title)
	room_goto(title)
	plants.plant[61].unlocked=true
}