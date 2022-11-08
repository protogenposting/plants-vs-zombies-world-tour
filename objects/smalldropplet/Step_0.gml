/// @description Insert description here
// You can write your code in this editor
if(y>oy)
{
	instance_destroy()
}

vsp+=0.5
x+=hsp
y+=vsp
ang=point_direction(x,y,x+hsp,y+vsp)
image_angle=ang