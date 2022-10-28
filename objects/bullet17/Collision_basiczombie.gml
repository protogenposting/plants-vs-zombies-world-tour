audio_play_sound(bewm,1000,false)
effect_create_above(ef_firework,x,y,1,c_aqua)

with(basiczombie)
{
	if(distance_to_object(other)<=25)
	{
		hp-=1
	}
}
action_kill_object();