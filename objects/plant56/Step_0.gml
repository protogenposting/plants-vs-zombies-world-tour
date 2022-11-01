/// @description Insert description here
// You can write your code in this editor
if(pfactive)
{
	instance_create(x+32,y,plant56)
	instance_create(x-32,y,plant56)
	instance_create(x,y-32,plant56)
	instance_create(x,y+32,plant56)
	pfactive=false
}

if(hp<=0)
{
	instance_destroy()
}