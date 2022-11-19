/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,basiczombie)
if(col)
{
	x=col.x
	y=col.y
	depth=col.depth-1
	col.hp-=0.1
	stats.dps+=0.1
	image_index=1
}
else
{
	move_snap(64,64)
	image_index=0
}