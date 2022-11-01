draw_sprite(sprite_index,1,x,y)
draw_sprite_ext(sprite_index,2,x,y,1,1,dir,c_white,1)
draw_set_colour(c_black)
draw_text(x,y-32,string_hash_to_newline(string(hp)))
draw_set_colour(c_white)

