/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5)
if(object_get_parent(thing.object)!=basiczombie&&thing.object!=basiczombie)
{
draw_sprite(object_get_sprite(thing.object),0,x,y)
}
else
{
draw_sprite(object_get_sprite(thing.object),0,x,y+32)
}
draw_set_alpha(1)