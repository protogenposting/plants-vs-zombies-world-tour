if(instance_exists(stats))
{
stats.killed+=1

if(choose(0,1,2,3,4)==4)
{
	if(slots.pf<slots.pfcap)
	{
		slots.pf+=1
	}
}
}
inst=instance_place(x,y,bullet22)
if(inst)
{
	instance_destroy(inst)
}