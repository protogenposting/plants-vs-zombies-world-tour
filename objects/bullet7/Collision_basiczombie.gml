/// @description Insert description here
// You can write your code in this editor
audio_play_sound(hit,1000,false)
if(other.id==target)
{
	other.hp-=1
	action_kill_object();
	other.hitty=true
	other.alarm[1]=10
}