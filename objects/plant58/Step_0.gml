if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
	image_speed=1
}
else
{
	image_speed=0
	image_index=0
}
if(image_index==3 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
inst=instance_create(x,y,bullet20)
inst.hspeed=2
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
		inst=instance_create(x,y,bullet20)
		inst.hspeed=15
		inst1=instance_create(x,y,bullet20)
		inst1.hspeed=15
		inst1.vspeed=-3
		inst2=instance_create(x,y,bullet20)
		inst2.hspeed=15
		inst2.vspeed=3
		pfi=pfr
	}
}