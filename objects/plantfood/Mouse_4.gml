var _list = ds_list_create();
var col=instance_place_list(x,y,plant1,_list,false)
if(col>0)
{
	for (var i = 0; i < col; ++i;)
    {
		inst=ds_list_find_value(_list,i)
		inst.pfactive=true
		inst.alarm[5]=_list[| i].pftime
	}
	inst=instance_create(x,y,effect)
	inst.sprite_index=pf2
	inst.rolling=false
	inst.i=20
	slots.pf-=1
}

ds_list_destroy(_list);
action_kill_object();