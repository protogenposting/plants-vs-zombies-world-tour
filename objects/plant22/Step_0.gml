sh-=1
if(sh<=0 && instance_exists(basiczombie))
{
target=instance_nearest(x,y,basiczombie)
inst=instance_create(x,y+6,bullet12)
inst.target=target
audio_play_sound(pop,1000,false)
sh=random_range(0,reload)
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		audio_play_sound(pop,1000,false)
		inst=instance_create(x,y+random_range(-6,6),bullet12)
		inst.hspeed=5
		pfi=pfr
	}
}