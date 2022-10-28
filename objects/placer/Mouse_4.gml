if(!place_meeting(x,y,plant1)&&can)
{
instance_create(x,y,plants.plant[slot].object)
stats.sunny-=plants.plant[slot].cost
slots.reload[slotselected]=plants.plant[slot].recharge
}
action_kill_object();
