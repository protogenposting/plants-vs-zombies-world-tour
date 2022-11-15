if(flowad)
{
	if(y<ogy)
	{
		vsp+=0.03
	}
	else
	{
		vsp=0
	}
}
y+=vsp

if(y>=yy)
{
	vsp=0
}
effect_create_above(ef_smokeup,x,y,1,c_gray)