image_angle+=rotspd
if(rotspd>0)
{
rotspd+=1
inst=instance_create(x,y,bullet1)
inst.direction=image_angle
inst.speed=5
}

