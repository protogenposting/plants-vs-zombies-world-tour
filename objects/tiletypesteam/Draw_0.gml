effect_create_above(ef_cloud,x,y,1,c_white)
if(instance_exists(plant5))
{
inst=instance_nearest(x,y,plant5)
move_towards_point(inst.x,inst.y,10)
}

