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
image_index=0
if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
canhit=true
}
sh-=1
if(sh<=0 && canhit)
{
audio_play_sound(pop,1000,false)
inst=instance_create(x,y,algae)
inst.hspeed=15
sh=reload
}
}

if(trapping)
{
image_index=1
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