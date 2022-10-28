if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, 0, y, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, x, 160+(64*4), basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, x, 160, basiczombie, true, true))
{
canhit=true
}
//yeeyee
else if(collision_line(x, y, room_width, 160+(64*4), basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, 0, 160, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, 0, 160+(64*4), basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, room_width, 160, basiczombie, true, true))
{
canhit=true
}
else
{
canhit=false
}
sh-=1
if(sh<=0 && canhit)
{
audio_play_sound(pop,1000,false)
inst=instance_create(x,y,bullet1)
inst.hspeed=15
inst1=instance_create(x,y,bullet1)
inst1.vspeed=15
inst2=instance_create(x,y,bullet1)
inst2.hspeed=-15
inst3=instance_create(x,y,bullet1)
inst3.vspeed=-15

inst=instance_create(x,y,bullet1)
inst.direction=point_direction(x,y,room_width, 160+(64*4))
inst.speed=15
inst1=instance_create(x,y,bullet1)
inst1.direction=point_direction(x,y,0, 160+(64*4))
inst1.speed=15
inst2=instance_create(x,y,bullet1)
inst2.direction=point_direction(x,y,room_width, 160)
inst2.speed=15
inst3=instance_create(x,y,bullet1)
inst3.direction=point_direction(x,y,0,160)
inst3.speed=15
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
inst=instance_create(x,y,bullet1)
inst.hspeed=15
inst1=instance_create(x,y,bullet1)
inst1.vspeed=15
inst2=instance_create(x,y,bullet1)
inst2.hspeed=-15
inst3=instance_create(x,y,bullet1)
inst3.vspeed=-15

inst=instance_create(x,y,bullet1)
inst.direction=point_direction(x,y,room_width, 160+(64*4))
inst.speed=15
inst1=instance_create(x,y,bullet1)
inst1.direction=point_direction(x,y,0, 160+(64*4))
inst1.speed=15
inst2=instance_create(x,y,bullet1)
inst2.direction=point_direction(x,y,room_width, 160)
inst2.speed=15
inst3=instance_create(x,y,bullet1)
inst3.direction=point_direction(x,y,0,160)
inst3.speed=15
		pfi=pfr
	}
}