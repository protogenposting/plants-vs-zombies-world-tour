/// @description Insert description here
// You can write your code in this editor
var num=10
var al = 0
repeat(10)
{
	draw_sprite_ext(sprite_index,0,x,y-46*num,1,1,0,c_white,al)
	al+=0.1
	num-=1
}
draw_self()