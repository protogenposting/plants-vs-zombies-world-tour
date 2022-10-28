sh-=1
if(sh<=0)
{
instance_create(x,y,coldsun)
if(instance_exists(basiczombie))
{
inst = instance_nearest(x,y,basiczombie)
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
		alarm[1]=30
	}
}