/// @description Insert description here
// You can write your code in this editor
repeat(5)
{
inst=instance_create(irandom(room_width),0,star)
inst.direction=point_direction(inst.x,inst.y,irandom(room_height),irandom(room_width))
inst.speed=irandom(10)
}
am+=1
if(am>mam)
{
	instance_destroy()
}
alarm[0]=10