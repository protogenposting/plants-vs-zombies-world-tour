col=instance_place(x,y,plant1)
if(col)
{
col.pfactive=true
col.alarm[5]=col.pftime
if(slots.pf>0)
{
slots.pf-=1
}
}

action_kill_object();