/// @description Insert description here
// You can write your code in this editor
hspeed=0
vspeed=0
direction=other.dir
speed=10
if(other.doubled&&image_xscale>=1)
{
	inst=instance_create(x,y,object_index)
	inst.direction=other.odir
	inst.speed=1
	inst.image_xscale=0.5
	inst.image_yscale=0.5
}