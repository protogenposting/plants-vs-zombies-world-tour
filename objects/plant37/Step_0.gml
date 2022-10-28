sh-=1
if(sh<=0 && collision_line(x, y, x+64*3, y, basiczombie, true, true))
{
inst=instance_create(x,y+16,bullet10)
inst.hspeed=5
audio_play_sound(pop,1000,false)
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
		inst=instance_create(x,y+random_range(-6,6),bullet10)
		inst.hspeed=5
		pfi=pfr
	}
}