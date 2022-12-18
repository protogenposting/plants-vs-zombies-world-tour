sh-=1
if(sh<=0)
{
inst=instance_create(x+random_range(-6,6),y,proj)
inst.hspeed=random_range(-5,100)
proj=choose(bullet1,bullet2,bullet3,bullet4,bullet5,bullet6,bullet8,bullet9,bullet10,bullet11,bullet13,bullet14,bullet15,bullet16,bullet17,bullet19,bullet20,bullet21,bullet22,bullet23,bullet24,star,bigdropplet,sun,coldsun,plantyfoody)
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
		instance_create(x+random_range(-6,6),y,proj)
		pfi=pfr
	}
}