sh-=1
if(sh<=0 && collision_rectangle(x,y-96,x+64*3,y+96,basiczombie,true,true))
{
audio_play_sound(pop,1000,false)
inst=instance_create(x,y,bullet6)
inst.hspeed=3
inst2=instance_create(x,y+64,bullet6)
inst2.hspeed=3
inst3=instance_create(x,y-64,bullet6)
inst3.hspeed=3
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
		inst2=instance_create(x,y+64,bullet6)
		inst2.hspeed=30
		pfi=pfr
	}
}