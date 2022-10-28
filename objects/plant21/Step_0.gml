sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
inst=instance_create(x,y+6,bullet11)
inst.hspeed=5
audio_play_sound(pop,1000,false)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}

///killfromplanttouch
if(place_meeting(x,y,plant1))
{
instance_destroy()
}
if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		audio_play_sound(pop,1000,false)
		inst=instance_create(x,y+random_range(-6,6),bullet11)
		inst.direction=rot
		inst.speed=3
		pfi=pfr
		rot+=360/120
	}
}