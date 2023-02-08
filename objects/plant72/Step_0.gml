/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,basiczombie)
if(col)
{
	x=col.x
	y=col.y
	depth=col.depth-1
	sprite_index=effsun
	if(col.hitty)
	{
		stats.sunny+=0.75
	}
	if(col.hp<=0)
	{
		instance_destroy()
	}
}
else
{
	move_snap(64,64)
	sprite_index=Sprite181
}
if(instance_exists(objLightController))
{
light.x=x
light.y=y
}