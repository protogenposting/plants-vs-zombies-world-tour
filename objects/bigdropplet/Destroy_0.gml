/// @description Insert description here
// You can write your code in this editor
repeat(irandom_range(10,20))
{
	inst=instance_create(x,y,smalldropplet)
	if(sprite_index==apol)
	{
		inst.sprite_index=seed
	}
}