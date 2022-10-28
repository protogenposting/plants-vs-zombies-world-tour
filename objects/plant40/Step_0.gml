sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
inst=instance_create(x,y+6,bullet16)
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
		inst=instance_create(x,160+16,bullet18)
		inst.hspeed=5
		inst=instance_create(x,160+64+16,bullet18)
		inst.hspeed=5
		inst=instance_create(x,160+128+16,bullet18)
		inst.hspeed=5
		inst=instance_create(x,160+(128+64)+16,bullet18)
		inst.hspeed=5
		inst=instance_create(x,160+256+16,bullet18)
		inst.hspeed=5
		pfi=pfr
	}
}