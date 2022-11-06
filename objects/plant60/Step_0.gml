if(collision_line(x-32, y, 0, y, basiczombie, true, true))
{
	if(image_index<10)
	{
		image_index=10
	}
	image_speed=1
}
else if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
	if(image_index>=10)
	{
		image_index=0
	}
	image_speed=1
}
else if(image_index>2)
{
	image_index=0
	image_speed=0.4
}
if(image_index==3)
{
inst=instance_create(x,y,bullet20)
inst.hspeed=2
sh=reload
}
if(image_index==14)
{
inst=instance_create(x,y,bullet13)
inst.hspeed=-0.1
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