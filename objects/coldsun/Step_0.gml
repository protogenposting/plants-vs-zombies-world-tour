vsp+=0.1
if(y<ogy)
{
	vsp+=0.1
}
else
{
	vsp=0
	hsp=0
	place_meeting(x,y,plant10)
	{
		hsp+=0.1
	}
}
y+=vsp
x+=hsp*2

image_angle+=vsp*hsp