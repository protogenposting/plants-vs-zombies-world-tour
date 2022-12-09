/// @description Insert description here
// You can write your code in this editor
y+=vsp
vsp+=0.25
while(y<160)
{
	y+=1
	vsp=0
}
while(y>160+(256+64))
{
	y-=1
	vsp=0
}
image_angle=-vsp