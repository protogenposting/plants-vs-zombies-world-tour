/// @description Insert description here
// You can write your code in this editor
if(pfactive)
{
	instance_create(x+64,y,plant28)
	pfactive=false
}

if(hp<=0)
{
	instance_destroy()
}