sh-=1
if(sh<=0)
{

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