sh-=1
if(sh<=0)
{
inst=instance_create(x,y-32,zoybeanzombie)
sh=reload
}
image_index=sh<120

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
		inst=instance_create(x,y-32,zoybeanbuckethead)
		pfi=pfr
	}
}