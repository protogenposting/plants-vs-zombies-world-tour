/// @description Insert description here
// You can write your code in this editor
if(room==title||room==alminac||room==endlessmenu||room==quests)
{
why=16
ecs=16
	repeat(room_height/32)
	{
		repeat(room_width/32)
		{
			draw_sprite(bgtypes[spr],0,ecs,why)
			ecs+=64
		}
		ecs=16
		why+=64
	}
	al-=0.01
	why=16
	ecs=16
	repeat(room_height/32)
	{
		repeat(room_width/32)
		{
			draw_sprite_ext(bgtypes[pspr],0,ecs,why,1,1,0,c_white,al)
			ecs+=64
		}
		ecs=16
		why+=64
	}
}
if(room==title||room==endlessmenu||room==quests)
{
draw_rectangle(0,0,128,64,true)
draw_text(16,16,"press to reset progress")
if(keyboard_check_pressed(vk_delete)||point_in_rectangle(mouse_x,mouse_y,0,0,128,64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,0,0,128,64)&&global.tapping)
{
	del_level()
	game_end()
}
}
draw_set_color(c_black)
ecs=room_width/2
why=(room_height/2)-128
var bnum=0
if(room==title)
{
	draw_sprite(logo,im,room_width/2,199/2)
	repeat(3)
	{
		try{
			draw_rectangle(ecs-64,why-32,ecs+64,why+32,true)
			draw_set_halign(fa_center)
			draw_text(ecs,why,button[bnum].button)
			if(point_in_rectangle(mouse_x,mouse_y,ecs-64,why-32,ecs+64,why+32)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs-64,why-32,ecs+64,why+32)&&global.tapping)
			{
				room_goto(button[bnum].roomy)
			}
		}
		catch(e)
		{
			
		}
		bnum+=1
		why+=64
	}
}
ecs=room_width/2
why=(room_height/2)-128
bnum=6
if(room==endlessmenu)
{
repeat(6)
{
	draw_rectangle(ecs-64,why-32,ecs+64,why+32,true)
	draw_set_halign(fa_center)
	draw_text(ecs,why,button[bnum].button)
	if(point_in_rectangle(mouse_x,mouse_y,ecs-64,why-32,ecs+64,why+32)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs-64,why-32,ecs+64,why+32)&&global.tapping)
	{
		room_goto(button[bnum].roomy)
	}
	bnum+=1
	why+=64
}
}
draw_set_halign(fa_left)
ecs=room_width/2
why=(room_height/2)-128
bnum=12
if(room==quests)
{
repeat(7)
{
	draw_rectangle(ecs-64,why-32,ecs+64,why+32,true)
	draw_set_halign(fa_center)
	draw_text(ecs,why,button[bnum].button)
	if(point_in_rectangle(mouse_x,mouse_y,ecs-64,why-32,ecs+64,why+32)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_Y,global.Touch_Y,ecs-64,why-32,ecs+64,why+32)&&global.tapping)
	{
		room_goto(button[bnum].roomy)
	}
	bnum+=1
	why+=64
}
var bnum=0
repeat(array_length(event))
{
	if(eventactive[bnum])
	{
		draw_rectangle(ecs-64,why-32,ecs+64,why+32,true)
		draw_set_halign(fa_center)
		draw_text(ecs,why,event[bnum].button)
		if(point_in_rectangle(mouse_x,mouse_y,ecs-64,why-32,ecs+64,why+32)&&mouse_check_button_pressed(mb_left))
		{
			room_goto(event[bnum].roomy)
		}
	}
	bnum+=1
}
}
draw_set_halign(fa_left)
iy-=1
if(room==alminac&&alminacy)
{
draw_text(0,0,"press to switch alminacs")
draw_rectangle(0,0,128,32,true)
 if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0,0,128,32)&&mouse_check_button_pressed(mb_left)&&iy<=0) {
	alminacy=false
	iy=2
 }
ecs=0
why=32
bnum=0
repeat (20) {
    ecs=0
    repeat (17) {
		if (bnum >= array_length(plants.plant))
		{
            break;
		}
        hasplant=false
			if(variable_struct_exists(plants.plant[bnum],"unlocked")&&plants.plant[bnum].unlocked)
			{
				hasplant=true
			}
			
			var statsy= function(object,bnum){
				inst=instance_create(-64,-64,object)
				if(variable_instance_exists(inst,"hp"))
				{
					var hp=inst.hp
				}
				else
				{
					var hp=0
				}
				if(variable_instance_exists(inst,"reload"))
				{
					var reload=inst.reload
				}
				else
				{
					var reload=0
				}
				var recharge=plants.plant[bnum].recharge
				instance_destroy(inst)
				return ("hp "+string(hp)+" reload "+string(reload/60)+" recharge "+string(recharge/60));
			}
			if(!variable_struct_exists(plants.plant[bnum],"statboi")&&os_browser != browser_opera)
			{
				//plants.plant[bnum].statboi=statsy(plants.plant[bnum].object,bnum)
				plants.plant[bnum].statboi="stats are disabled in this release sorry :("
			}
			
			
		if (!hasplant)
		{
            bnum += 1
			ecs+=32
			continue;
		}
		pacc=0
		if(variable_struct_exists(plants.plant[bnum],"lawn"))
		{
			if(plants.plant[bnum].lawn==tilemud)
			{
				pacc=1
			}
			if(plants.plant[bnum].lawn==tilesand)
			{
				pacc=2
			}
			if(plants.plant[bnum].lawn==tilevolcano)
			{
				pacc=3
			}
			if(plants.plant[bnum].lawn==tiledesert)
			{
				pacc=4
			}
			if(plants.plant[bnum].lawn==tilegrasskrima)
			{
				pacc=9
			}
		}
		if(variable_struct_exists(plants.plant[bnum],"lawn"))
		{
			draw_sprite(Sprite178,pacc,ecs+32,why+32)
		}
		else
		{
			draw_sprite(tilestore, 0, ecs + 32, why + 32);
		}
		
        draw_sprite(object_get_sprite(plants.plant[bnum].object), 0, ecs + 32, why + 32);
		draw_sprite(Sprite176,pacc,ecs+32,why+32)
        draw_text(ecs+5,why+30-4+32,string_hash_to_newline(string(plants.plant[bnum].cost)))
        ecs += 64;
        
        if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), ecs-64, why, ecs, why+64)
            ) {
            draw=true
			if(variable_struct_exists(plants.plant[bnum],"entry"))
			{
				str=plants.plant[bnum].entry
			}
			else
			{
				str="no entry exists for this plant yet"
			}
            if(draw)
			{
			draw_set_colour(c_black)
			draw_rectangle(64*17,0,(64*18)+256,768,false)
			draw_set_colour(c_white)
			draw_text_ext(64*17,0,plants.plant[bnum].desc,15,256)
			draw_text_ext(64*17,256,string_hash_to_newline(str),15,256)
				if(os_browser != browser_opera)
				{
				draw_text_ext(64*17,128,plants.plant[bnum].statboi,15,256)
				}
			}
        }
        else
        {
        draw=false
        }
		bnum += 1;
    }
    why += 128;
}
}

if(room==alminac&&!alminacy)
{
draw_text(0,0,"press to switch alminacs")
draw_rectangle(0,0,128,32,true)
 if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0,0,128,32)&&mouse_check_button_pressed(mb_left)&&iy<=0) {
	alminacy=true
	iy=2
 }
ecs=0
why=32
bnum=0
repeat (20) {
    ecs=0
    repeat (17) {
        hasplant=false
        if (bnum >= array_length(plants.zombie))
            break;
		if(variable_struct_exists(plants.zombie[bnum],"lawn"))
		{
			draw_sprite(plants.zombie[bnum].lawn, 0, ecs + 32, why + 32);
		}
		else
		{
			draw_sprite(tilestore, 0, ecs + 32, why + 32);
		}
        draw_rectangle(ecs, why, ecs + 64, why + 64, true);
        draw_sprite(object_get_sprite(plants.zombie[bnum].object), 0, ecs + 32, why + 32);
        ecs += 64;
        
        if (point_in_rectangle(mouse_x, mouse_y, ecs-64, why, ecs, why+64)
            ) {
            draw=true
			if(variable_struct_exists(plants.zombie[bnum],"entry"))
			{
				str=plants.zombie[bnum].entry
			}
			else
			{
				str="no entry exists for this zombie yet"
			}
            if(draw)
			{
			draw_set_colour(c_black)
			draw_rectangle(64*17,0,(64*18)+256,768,false)
			draw_set_colour(c_white)
			draw_text_ext(64*17,0,plants.zombie[bnum].desc,15,256)
			var stringyboi = plants.zombie[bnum].statsy(plants.zombie[bnum].object)
			draw_text_ext(64*17,128,stringyboi,15,256)
			draw_text_ext(64*17,128*2,string_hash_to_newline(str),15,256)
			}
        }
        else
        {
        draw=false
        }
		bnum += 1;
    }
    why += 64;
}
}

ecs=0
why=view_get_hport(view_current)-64
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"back")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs,why,ecs+128,why+64)&&global.tapping)
{
if(instance_exists(stats)||instance_exists(selection))
{
	instance_destroy(stats)
	instance_destroy(selection)
	instance_destroy(slots)
	instance_destroy(stats)
	room_goto(title)
	audio_stop_all()
}
else if(room==endlessmenu||room==alminac||room==quests||room==editor||room==teirlist)
{
	room_goto(title)
	audio_stop_all()
}
}
why-=64
draw_set_halign(fa_center)
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs+64,why,"$"+string(plants.money))
draw_set_halign(fa_left)
if(room==title)
{
ecs=room_width-128
why=room_height-64
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"discord")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X,global.Touch_Y,ecs,why,ecs+128,why+64)&&global.tapping)
{
	url_open("https://discord.gg/AnGgzRQtgm")
}
ecs=128
draw_rectangle(ecs,why,ecs+128,why+64,true)
if(game_get_speed(gamespeed_fps)==30)
{
draw_text(ecs,why,"60 fps")
}
if(game_get_speed(gamespeed_fps)==60)
{
draw_text(ecs,why,"30 fps")
}
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left))
{
	if(game_get_speed(gamespeed_fps)==30)
{
game_set_speed(60, gamespeed_fps);
}
if(game_get_speed(gamespeed_fps)==60)
{
game_set_speed(30, gamespeed_fps);
}
}
}

if(room==title)
{
ecs+=128
draw_text(ecs,why-16,"volume")
draw_line(ecs,why,ecs+100,why)
draw_rectangle(ecs+(volume*100)-16,why-16,ecs+(volume*100)+16,why+16,true)
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+100,why+64)&&mouse_check_button(mb_left))
{
	volume=(device_mouse_x_to_gui(0)-ecs)/100
}
}
audio_master_gain(volume);

draw_set_color(c_purple)

draw_text(0,0,string(room))