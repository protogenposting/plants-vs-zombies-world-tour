draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)

if(drawing)
{
if(instance_exists(inst))
{
inst.alarm[0]=360
inst.hp-=0.2
draw_set_colour(c_green)
draw_line(x,y+32,inst.x,inst.y)
draw_line(x,y-32,inst.x,inst.y)
draw_set_colour(c_black)
if(inst.object_index==grave)
{
var _list = ds_list_create();
var _num = collision_line_list(x, y, inst.x, inst.y, basiczombie, false, true, _list, false);
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        with(_list[| i])
		{
			hp-=0.2
		}
    }
}
ds_list_destroy(_list);
}
}
}

