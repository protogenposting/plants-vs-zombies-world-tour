sh-=1
if(sh<=0 && instance_exists(basiczombie))
{
	repeat(irandom(5))
	{
		inst=instance_create(x,y-6,bullet17)
		inst.direction=random_range(-45,45)
		inst.speed=10
		audio_play_sound(pop,1000,false)
	}
sh=reload
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
		inst=instance_create(x,y+random_range(-6,6),bullet17)
		inst.hspeed=5
		pfi=pfr
	}
}