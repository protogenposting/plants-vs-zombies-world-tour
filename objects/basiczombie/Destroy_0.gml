if(instance_exists(stats))
{
stats.killed+=1
var mon=irandom(nspd*4)
if(mon>0)
{
inst=instance_create(x,y,coinmover)
inst.mon=mon*10
}

if(choose(0,1,2,3,4)==4)
{
	instance_create(x,y,plantyfoody)
}
}
inst=instance_place(x,y,bullet22)
if(inst)
{
	instance_destroy(inst)
}