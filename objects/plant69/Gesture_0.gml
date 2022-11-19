/// @description Insert description here
// You can write your code in this editor
if(stats.sunny>=50)
{
	inst=instance_create(x,y,bullet23)
	inst.hspeed=5
	stats.sunny-=50
	image_index=1
	alarm[1]=10
}