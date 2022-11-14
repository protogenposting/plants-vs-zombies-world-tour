/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sunbushleaves,image_index,x,y,1,1,0,col,0.5)
if(hp<mhp)
{
	effect_create_above(ef_spark,x,y,1,c_green)
	hp+=1
}