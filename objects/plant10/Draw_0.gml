draw_sprite_ext(chillflowa,image_index,x,y,1,1,0,col,1)

if(drawing)
{
if(instance_exists(inst))
{
inst.frozen=true
inst.alarm[0]=360
inst.hp-=0.05
draw_set_colour(c_aqua)
draw_line(x,y,inst.x,inst.y)
draw_set_colour(c_black)
}
}

