with(basiczombie)
{
if(place_meeting(x,y,other))
{
instance_destroy(other)
hp-=50
if(distance_to_object(other)<=128)
{
hp-=5
}
}
}

///powering
if(place_meeting(x,y,tiletypepower))
{
powered=true
sprite_index=poweredbombegranite
}
else
{
powered=false
sprite_index=bombegranite
}

