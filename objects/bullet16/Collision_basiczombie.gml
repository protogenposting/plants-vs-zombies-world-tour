audio_play_sound(bewm,1000,false)
effect_create_above(ef_explosion,x,y,1,c_white)

with(basiczombie)
{
	if(distance_to_object(other)<=64)
	{
		hp-=1
	}
}
action_kill_object();
