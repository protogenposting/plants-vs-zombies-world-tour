if(!place_meeting(x,y,plant10))
{
inst=instance_create(x,y,sunmover)
inst.sunny=25
inst.sprite_index=coldsunn

action_kill_object();
}