audio_play_sound(bewm,1000,false)
effect_create_above(ef_explosion,other.x,other.y,1,c_white)
if(instance_exists(basiczombie))
	{
		target=instance_nearest(x,y,basiczombie)
	}
	else
	{
		instance_destroy()
	}
with(basiczombie)
{
if(distance_to_object(other)<=96)
{
hp-=5
stats.dps+=5
}
}

var __b__;
__b__ = action_if_dice(2);
if __b__
{
	spd=0
	if(instance_exists(basiczombie))
	{
		target=instance_nearest(x,y,basiczombie)
	}
	else
	{
		action_kill_object();
	}
}
else
{
action_kill_object();
}
other.hitty=true
other.alarm[1]=10