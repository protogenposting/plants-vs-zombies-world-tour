vsp=-2

flowad=true
ogy=y
y-=1
if(!flowad)
{
	vsp=-0.5
}

stats.plantfoods+=1
if(stats.plantfoods>stats.maxpf)
{
	instance_destroy()
}