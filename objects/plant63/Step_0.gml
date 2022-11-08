/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,plant1)
if(!col)
{
	instance_destroy()
}
if(instance_exists(col))
{
	col.image_alpha-=dir
}
image_alpha-=dir
if(image_alpha>1.01)
{
	instance_destroy()
}