sh-=1
if(inst!=-1&&!instance_exists(inst))
{
	inst=-1
}
if(sh<=0)
{
inst=instance_create(x,y,coldsun)
inst.flowad=true
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
	
}