/// @description Insert description here
// You can write your code in this editor
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
video_close();
	
if(!quest)
{
	with(menu)
	{
		clevel=room
		save_level()
	}
}