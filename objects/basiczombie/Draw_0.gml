/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y-16,image_xscale,1,0,col,1)
draw_sprite_ext(hitsprite,image_index,x,y-16,image_xscale,1,0,c_white,hitty*0.5)
if(armor!=-1)
{
	var iseating=sprite_index!=zeat
	draw_sprite_ext(armor,image_index*iseating,x,y-16,image_xscale,1,0,col,1)
	draw_sprite_ext(armorhit,image_index*iseating,x,y-16,image_xscale,1,0,c_white,hitty*0.5)
}
draw_text(x,y-32,string_hash_to_newline(string(hp)))