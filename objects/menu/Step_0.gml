/// @description Insert description here
// You can write your code in this editor
if(room==title||room==alminac||room==endlessmenu||room==quests)
{
audio_sound_gain(menutheme,1,720)
if(audio_sound_get_track_position(aud)>=nextbeat)
{
	pspr = spr
	al=1
	spr=irandom(array_length(bgtypes)-1)
	while(spr==pspr)
	{
		spr=irandom(array_length(bgtypes)-1)
	}
	show_debug_message("a")
	nextbeat+=beatlen
}
if(!audio_is_playing(menutheme))
{
	aud=audio_play_sound(menutheme,1000,false)
	beatlen=0.5
	nextbeat=beatlen
}
}
else
{
	audio_sound_gain(menutheme,0,720)
}
button[0]={
	button:"adventure",
	roomy: clevel
}
	
	view_enabled=false
	view_visible[0]=true
	camera_set_view_size(view_camera[0],1366,768)
if(instance_exists(stats))
{
	view_enabled=true
	view_visible[0]=true
	camera_set_view_size(view_camera[0],1366/1.2,768/1.2)
	camera_set_view_pos(view_camera[0],128,160-128)
}