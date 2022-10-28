sh-=1
if(sh<=0)
{
if(instance_exists(basiczombie))
{
inst = instance_furthest(x,y,basiczombie)
if(instance_exists(grave))
{
	inst = instance_furthest(x,y,grave)
}
drawing=true
alarm[1]=20
}
sh=reload
}

if(sh<=100)
{
col=c_blue
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
		if(instance_exists(basiczombie))
{
inst = instance_furthest(x,y,basiczombie)
if(instance_exists(grave))
{
	inst = instance_furthest(x,y,grave)
}
drawing=true
alarm[1]=20
}
		pfi=pfr
	}
}