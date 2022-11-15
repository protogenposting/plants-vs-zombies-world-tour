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

if(num>=mnum)
{
	audio_stop_all()
	instance_destroy()
	instance_destroy(slots)
	room_goto_next()
	var numy = 0
	repeat(array_length(plant))
	{
		plants.plant[plant[numy]].unlocked=true
		numy+=1
	}
	if(quest)
	{
		instance_destroy(stats)
		instance_destroy(selection)
		instance_destroy(slots)
		instance_destroy(stats)
		menu.save_level()
		room_goto(title)
		audio_stop_all()
	}
}