/// @description Insert description here
// You can write your code in this editor
if(pfactive)
{
	instance_create(x+32,y,plant19)
	instance_create(x-32,y,plant19)
	instance_create(x,y-32,plant19)
	instance_create(x,y+32,plant19)
	pfactive=false
}