sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
inst=instance_create(x,y+6,choose(bullet1,bullet2,bullet3,bullet4,bullet5,bullet6,bullet8,bullet9,bullet10,bullet10,bullet11,bullet12,bullet13,bullet14,bullet16))
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
		inst=instance_create(x,y+6,choose(bullet1,bullet2,bullet3,bullet4,bullet5,bullet6,bullet8,bullet9,bullet10,bullet10,bullet11,bullet12,bullet13,bullet14,bullet16))
		inst.hspeed=5
		pfi=pfr
	}
}