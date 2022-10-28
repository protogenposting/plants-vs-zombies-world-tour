sh-=1
if(sh<=0)
{
instance_create(x,y,sun)
sh=reload
}

if(sh<=100)
{
col=c_gray
}
else
{
col=c_white
}
inst=instance_nearest(x,y,basiczombie)

if(collision_line(x,y,x+128,y,inst,false,true))
{
inst.hp-=0.1
animspd=5
anim=1
}
else
{
animspd=20
anim=0
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
		instance_create(x+random_range(x-6,x+6),y,sun)
		pfi=pfr
	}
}