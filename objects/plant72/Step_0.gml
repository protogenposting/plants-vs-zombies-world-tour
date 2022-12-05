/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,basiczombie)
if(col)
{
	x=col.x
	y=col.y
	depth=col.depth-1
	image_alpha=0
	if(col.hitty)
	{
		stats.sunny+=0.75
	}
	if(col.hp<=0)
	{
		instance_destroy()
	}
	effect_create_above(ef_spark,x,y,1,c_yellow)
}
else
{
	move_snap(64,64)
	image_alpha=1
}