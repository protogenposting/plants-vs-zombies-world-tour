y=mouse_y
x=mouse_x
move_snap(64,64)

while(y<160+32)
{
y+=32
}
while(y>480-32)
{
y-=32
}
if(x<32)
{
x+=64
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

if(slot==3||slot==5||slot==36)
{
if(place_meeting(x,y,tiletypewater))
{
can=true
}
else
{
can=false
}
}

