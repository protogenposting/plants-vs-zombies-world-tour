/// @description Insert description here
// You can write your code in this editor
image_angle+=rsp
rsp+=1
hspeed*=0.99
if(hspeed<=0.01)
{
	instance_destroy()
}