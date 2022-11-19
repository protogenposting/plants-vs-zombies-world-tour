/// @description Insert description here
// You can write your code in this editor
hspeed=0
vspeed=0
direction=other.dir
speed=10
if(other.doubled)
{
	inst=instance_create(x,y,object_index)
	inst.direction=other.odir
	inst.speed=5
}