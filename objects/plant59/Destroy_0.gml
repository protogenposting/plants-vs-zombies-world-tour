/// @description Insert description here
// You can write your code in this editor
if(instance_exists(slots))
{
inst=instance_place(x,y,basiczombie)

if(inst)
{
	instance_create(x,y,zoybeanbuckethead)
	instance_destroy(inst)
}
}