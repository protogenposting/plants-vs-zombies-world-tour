/// @description Insert description here
// You can write your code in this editor
with(basiczombie)
{
	if(distance_to_object(other)<=68)
	{
		hp-=1
		stats.dps+=1
		frozen=true
		audio_play_sound(hit,1000,false)
		alarm[0]=720
	}
}