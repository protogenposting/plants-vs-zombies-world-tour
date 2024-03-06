i=image_index
if(collision_line(x-64, y, x+64, y, basiczombie, true, true))
{
	trapping=true
}
else
{
	trapping=false
}

if(!trapping)
{
	if(image_index>=image_number-1)
	{
		image_index=0
	}
}
if(i==11)
{
	//audio_play_sound(pop,1000,false)
	//inst=instance_create(x,y,algae)
	//inst.hspeed=15
}

if(trapping)
{
	image_index=image_number-1
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
		inst=instance_create(x,y,algae)
		inst.hspeed=15
		inst.vspeed=2
		inst=instance_create(x,y,algae)
		inst.vspeed=15
		inst=instance_create(x,y,algae)
		inst.hspeed=-15
		inst=instance_create(x,y,algae)
		inst.vspeed=-15
		inst=instance_create(x,y,algae)
		inst.hspeed=15
		inst.vspeed=-2
		pfi=pfr
	}
}