sh-=1
var _list = ds_list_create();
var _num = collision_rectangle_list(x - 64, y - 64, x + 64, y + 64, basiczombie, false, true, _list, false);

if(sh<=0 && _num > 0)
{
effect_create_above(ef_ring,x,y,1,c_white)
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        inst=_list[| i]
		inst.hp-=1
    }
}
sh=reload
}
ds_list_destroy(_list);
///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		effect_create_above(ef_ring,x,y,2,c_white)
		with(basiczombie)
		{
		if(distance_to_object(other)<=256)
		{
			hp-=1
		}
		}
		pfi=pfr
	}
}