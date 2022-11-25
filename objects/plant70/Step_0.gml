sh-=1
if(sh<=0)
{
audio_play_sound(bewm,1000,false)
inst=instance_create(x,y,bullet24)
inst.hspeed=1
sh=reload
}
i-=1
if(i<=0)
{
	instance_destroy()
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	col=collision_rectangle(x-64,y-4,x+64*3,y+4,basiczombie,true,true)
	if(pfi<=0 && col)
	{
		col.hp-=0.01
		pfi=pfr
	}
}