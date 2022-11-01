/// @description Insert description here
// You can write your code in this editor
if(instance_exists(stats)||instance_exists(selection))
{
	instance_destroy(stats)
	instance_destroy(selection)
	instance_destroy(slots)
	instance_destroy(stats)
	room_goto(title)
	audio_stop_all()
}
else if(room==endlessmenu||room==alminac||room==quests)
{
	room_goto(title)
}