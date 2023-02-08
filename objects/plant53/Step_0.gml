image_xscale+=0.2
image_yscale+=0.2
sh-=1
if(sh<=0)
{
	audio_play_sound(bewm,1000,false)
	inst=instance_create(x,y,effect)
	inst.sprite_index=EFFPOWIE
	var _list = ds_list_create();
var _num = collision_rectangle_list(x - 64, y - 64, x + 64, y + 64, basiczombie, false, true, _list, false);
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        _list[| i].hp-=100
    }
}
ds_list_destroy(_list);
sh=reload
instance_destroy()
}

///kill
if(hp<=0)
{
instance_destroy()
}