sh-=1
if(sh<=0)
{
inst=instance_create(x,y,sun)
inst.flowad=true
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