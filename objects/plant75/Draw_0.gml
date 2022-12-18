draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,col,image_alpha)

snapvar = function(num,snap){
	var ret=round(num/snap)*snap;
	return ret
}
if(aiming)
{
	draw_sprite(treemancrosshair,0,snapvar(mouse_x,64),snapvar(mouse_y,64))
}