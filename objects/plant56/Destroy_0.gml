if(hp<=0)
{
effect_create_above(ef_explosion,other.x,other.y,1,c_white)

var _list = ds_list_create();
var _num = collision_rectangle_list(x - 128-64, y - 128-64, x + 128+64, y + 128+64, basiczombie, false, true, _list, false);

if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        inst=_list[| i]
		inst.hp-=5
		stats.dps+=5
		inst.nutted=true
    }
}
ds_list_destroy(_list)
}