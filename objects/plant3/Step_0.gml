if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, 0, y, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, x, room_height, basiczombie, true, true))
{
canhit=true
}
else if(collision_line(x, y, x, 0, basiczombie, true, true))
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
inst=instance_create(x,y,bullet2)
inst.hspeed=15
inst1=instance_create(x,y,bullet2)
inst1.vspeed=15
inst2=instance_create(x,y,bullet2)
inst2.hspeed=-15
inst3=instance_create(x,y,bullet2)
inst3.vspeed=-15
sh=reload
rotting=true
rot=0
rotnum=0.1
alarm[2]=30
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	rotnum=36
	pfi-=1
	if(pfi<=0)
	{
		audio_play_sound(pop,1000,false)
		inst=instance_create(x,y,bullet2)
		inst.hspeed=15
		inst1=instance_create(x,y,bullet2)
		inst1.hspeed=15
		inst1.vspeed=-3
		inst2=instance_create(x,y,bullet2)
		inst2.hspeed=15
		inst2.vspeed=3
		pfi=pfr
	}
}

rot+=rotnum
if(rotting)
{
	rotnum+=0.5
}
else
{
	rotnum-=0.5
}
if(rot>0)
{
	dir=rot
}
else
{
	dir=0
}