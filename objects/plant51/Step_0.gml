sh-=1
if(sh<=0)
{
if(instance_exists(basiczombie))
{
inst = instance_nearest(x,y,basiczombie)
instx=inst.x
insty=inst.y
drawing=true
alarm[1]=30
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
	if(instance_exists(basiczombie))
	{
		inst = instance_nearest(x,y,basiczombie)
		drawing=true
		instx=inst.x
		insty=inst.y
		alarm[1]=30
	}
}