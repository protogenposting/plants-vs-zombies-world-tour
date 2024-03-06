draw_set_halign(fa_left)
ecs = 0;
why = 0;
slotty = 0;

repeat (20) {
    ecs=0
    repeat ((room_width - 128) / 64) {
		if (slotty >= array_length(plants.plant))
		{
            break;
		}
        hasplant=false
			if(variable_struct_exists(plants.plant[slotty],"unlocked")&&plants.plant[slotty].unlocked)
			{
				hasplant=true
			}
			
			
			

			
			
			
		if (!hasplant)
		{
            slotty += 1
			ecs+=32
			continue;
		}
		pacc=0
		if(variable_struct_exists(plants.plant[slotty],"lawn"))
		{
			if(plants.plant[slotty].lawn==tilemud)
			{
				pacc=1
			}
			if(plants.plant[slotty].lawn==tilesand)
			{
				pacc=2
			}
			if(plants.plant[slotty].lawn==tilevolcano)
			{
				pacc=3
			}
			if(plants.plant[slotty].lawn==tiledesert)
			{
				pacc=4
			}
			if(plants.plant[slotty].lawn==tilegrasskrima)
			{
				pacc=9
			}
		}
		if(variable_struct_exists(plants.plant[slotty],"lawn"))
		{
			draw_sprite(Sprite178,pacc,ecs+32,why+32)
		}
		else
		{
			draw_sprite(tilestore, 0, ecs + 32, why + 32);
		}
		
        draw_sprite(object_get_sprite(plants.plant[slotty].object), 0, ecs + 32, why + 32);
		draw_sprite(Sprite176,pacc,ecs+32,why+32)
        draw_text(ecs+5,why+30-4+32,string_hash_to_newline(string(plants.plant[slotty].cost)))
        ecs += 64;
        
        if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), ecs-64, why, ecs, why+64)&&selected<maxslots
            ) {
            draw=true
            str=plants.plant[slotty].desc
            if(mouse_check_button_pressed(mb_left))
            {
            slot[selected] = slotty;
            selected += 1;
			menu.alarm[0]=10
            }
            if(draw)
{
draw_set_colour(c_black)
draw_rectangle(736-64,544,736+128,544+360,false)
draw_set_colour(c_white)
draw_text_ext(736-64,544,string_hash_to_newline(str),15,200)
}
        }
        else
        {
        draw=false
        }
        slotty += 1;
    }
    why += 128;
}

ecs=room_width-64
why=0
repeat(maxslots)
{
draw_rectangle(ecs,why,ecs+64,why+64,true)
if(slottyo<selected)
{
draw_sprite(object_get_sprite(plants.plant[slot[slottyo]].object),0,ecs+32,why+32)
}
slottyo+=1
why+=64
}
slottyo=0


if(room==quest2)
{
	audio_sound_gain(pickyoseeds,0.00001,360*2)
	inst=instance_create(x,y,slots)
	instance_create(x,y,stats)
	inst.slot[0]=29
	inst.slot[1]=29
	inst.slot[2]=29
	inst.slot[3]=29
	inst.slot[4]=29
	inst.slot[5]=29
	inst.slot[6]=29
	inst.maxslots=maxslots
	inst.mnum=mnum
	inst.plant=plant
	inst.quest=quest
	inst.maxpf=maxpf
	inst.zomb=zomb
	instance_destroy()
}

ecs=room_width-128
why=view_get_hport(view_current)-64
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"START")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs,why,ecs+128,why+64)&&global.tapping)
{
	audio_sound_gain(pickyoseeds,0,360*2)
	inst=instance_create(x,y,slots)
	inst.slot[0]=slot[0]
	inst.slot[1]=slot[1]
	inst.slot[2]=slot[2]
	inst.slot[3]=slot[3]
	inst.slot[4]=slot[4]
	inst.slot[5]=slot[5]
	inst.slot[6]=slot[6]
	inst.maxslots=maxslots
	inst=instance_create(x,y,stats)
	inst.mnum=mnum*1.5
	inst.plant=plant
	inst.quest=quest
	inst.maxpf=maxpf
	inst.zomb=zomb
	instance_destroy()
}
ecs-=128
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"CLEAR")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs,why,ecs+128,why+64)&&global.tapping)
{
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"START")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs,why,ecs+128,why+64)&&global.tapping)
{
slot[0]=0
slot[1]=0
slot[2]=0
slot[3]=0
slot[4]=0
slot[5]=0
slot[6]=0
selected=0

if(room==quest1)
{
	selected=1
	slot[0]=7
}
if(room==quest3)
{
	selected=1
	slot[0]=13
}
if(room==quest4)
{
	selected=1
	slot[0]=40
}
if(room==quest5)
{
	selected=1
	slot[0]=60
}
if(room==quest6)
{
	selected=1
	slot[0]=62
}
if(room==quest7)
{
	selected=1
	slot[0]=71
}
if(room==quest8)
{
	selected=1
	slot[0]=73
}
if(room==quest9)
{
	selected=1
	slot[0]=74
}
}
}