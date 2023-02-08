/// @description Insert description here
// You can write your code in this editor
var _list = ds_list_create();
var _num = collision_rectangle_list(x - 100, y - 100, x + 100, y + 100, basiczombie, false, true, _list, false);
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        _list[| i].hp-=1
    }
}
ds_list_destroy(_list);
instance_destroy()