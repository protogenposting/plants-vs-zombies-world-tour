sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true)||sh<=0 && collision_line(x, y+32, room_width, y+32, basiczombie, true, true)||sh<=0 && collision_line(x, y-32, room_width, y-32, basiczombie, true, true))
{
inst=instance_create(x,y,bullet1)
inst.hspeed=5
inst2=instance_create(x,y+64,bullet1)
inst2.hspeed=5
inst3=instance_create(x,y-64,bullet1)
inst3.hspeed=5
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
		inst=instance_create(x,y+random_range(-6,6),bullet1)
		inst.hspeed=5
		inst=instance_create(x,y,bullet1)
		inst.hspeed=5
		inst.vspeed=2.5
		inst=instance_create(x,y,bullet1)
		inst.hspeed=5
		inst.vspeed=-2.5
		pfi=pfr
	}
}