/// @description Insert description here
// You can write your code in this editor
if(other.i<=0)
{
	audio_play_sound(hit,1000,false)
	other.hp-=0.50
	other.i=20
	other.hitty=true
	other.alarm[1]=10
	other.withered=true
	other.alarm[0]=360
	action_kill_object();
}