if(!doubled)
{
	draw_sprite(arrowwood2,image_index,x,y)
}
else
{
	draw_sprite(arrowwood4,image_index,x,y)
}
draw_sprite_ext(arrowwood3,0,x,y-12,1,1,dir,c_white,1)
if(doubled)
{
	draw_sprite_ext(arrowwood5,0,x,y-20,1,1,odir,c_white,1)
}
draw_set_colour(c_black)
draw_text(x,y-32,string_hash_to_newline(string(hp)))
draw_set_colour(c_white)

