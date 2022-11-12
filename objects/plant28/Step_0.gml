image_angle+=rotspd
if(rotspd>0)
{
rotspd+=1
}

if(rotspd<=0)
{
	if(image_index>3)
	{
		image_index=0
	}
}
else
{
	image_speed=0
	image_index=4
}