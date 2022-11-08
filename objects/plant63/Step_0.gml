/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,plant1)
if(!col)
{
	instance_destroy()
}
col.image_alpha-=1
image_alpha-=dir

if(image_alpha<=0)
{
	instance_destroy()
}