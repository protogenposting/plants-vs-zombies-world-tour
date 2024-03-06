/// @description Insert description here
// You can write your code in this editor

//audio_sound_set_track_position(aud2,audio_sound_get_track_position(aud1))

i-=1
if(i<=0)
{
	dps=0
	i=room_speed
}
ecs=room_width
why=room_height/2
inst=instance_create(ecs,why,tiletypewater)
waterlevel-=(waterlevel-nwaterlevel)/60
inst.image_xscale=waterlevel*2
inst.image_yscale=room_height/64
inst.alarm[0]=2

if(num>=mnum&&!instance_exists(basiczombie)&&!video)
{
	audio_stop_all()
	my_video = video_open("endthing.mp4");
	alarm[2]=360+120
	video=true
}