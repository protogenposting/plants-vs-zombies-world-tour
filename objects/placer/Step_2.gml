if(canny)
{
y=mouse_y
x=mouse_x
move_snap(64,64)
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);

while(x<32+64*5)
{
x+=64
}
while(x>32+(64*11)+64*5)
{
x-=64
}
if(!place_meeting(x,y,tiletypewater))
{
can=true
}
else if(place_meeting(x,y,tiletypewater)&&place_meeting(x,y,plant4))
{
can=true
}
else if(place_meeting(x,y,tiletypewater))
{
can=false
}
else if(place_meeting(x,y,tiletypesteam)||place_meeting(x,y,tiletypesteammaker)||place_meeting(x,y,tiletypeunplantable))
{
can=false
}
else
{
can=true
}

if(variable_struct_exists(plants.plant[slot],"waterplant"))
{
if(place_meeting(x,y,tiletypewater))
{
can=true
}
else
{
can=false
}
if(layer_background_get_sprite(bg)==tilesand)
{
	can=true
}
}
if(place_meeting(x,y,plant1))
{
	can=false
}

if(place_meeting(x,y,plant4)&&!place_meeting(x,y,plant1))
{
	can=true
}
if(variable_struct_exists(plants.plant[slot],"vineplant"))
{
if(place_meeting(x,y,plant1))
{
can=true
}
else
{
can=false
}
}
if(slot==8&&place_meeting(x,y,plant1)&&!place_meeting(x,y,plant4)&&layer_background_get_sprite(bg)==tilesand)
{
	can=true
}



if(mouse_check_button_pressed(mb_left))
{
	if(y<160+32&&y<room_width/2||y<160+room_height/1.5+32&&y>room_height/1.5)
{
instance_destroy()
can=false
}
if(y>480-32&&y<room_width/2||y>(160+room_height/1.5+32)+256&&y>room_height/1.5)
{
instance_destroy()
can=false
}
if(variable_struct_exists(plants.plant[slot],"plantOnTop")&&(place_meeting(x,y,plant4)||!place_meeting(x,y,tiletypewater)))
{
	can=true
}
	if(can)
{
inst=instance_create(x,y,plants.plant[slot].object)
stats.sunny-=plants.plant[slot].cost
slots.reload[slotselected]=plants.plant[slot].recharge
if(variable_struct_exists(plants.plant[slot],"waterplant"))
{
	inst.waterboi=true
}
else
{
	inst.waterboi=false
}
}
inst=instance_create(other.x,other.y,effect)
inst.sprite_index=ploop
action_kill_object();

}
}