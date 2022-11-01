/// @description Insert description here
// You can write your code in this editor
if(instance_exists(plant1))
{
instp=instance_nearest(x,y,plant1)
inst=instance_create(instp.x,instp.y,octoboi)
inst.planttype=instp.object_index
instance_destroy(instp)
}
alarm[1]=720*2