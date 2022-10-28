ecs = 0;
why = 0;
slotty = 0;

repeat (20) {
    ecs=0
    repeat ((room_width - 128) / 64) {
        
        if (slotty >= array_length(plants.plant))
            break;
		if(variable_struct_exists(plants.plant[slotty],"lawn"))
		{
			draw_sprite(plants.plant[slotty].lawn, 0, ecs + 32, why + 32);
		}
		else
		{
			draw_sprite(tilestore, 0, ecs + 32, why + 32);
		}
        draw_rectangle(ecs, why, ecs + 64, why + 64, true);
        draw_sprite(object_get_sprite(plants.plant[slotty].object), 0, ecs + 32, why + 32);
        draw_text(ecs + 16, why, string_hash_to_newline(string(plants.plant[slotty].cost)));
        ecs += 64;
        
        if (point_in_rectangle(mouse_x, mouse_y, ecs-64, why, ecs, why+64)
            ) {
            draw=true
            str=plants.plant[slotty].desc
            if(mouse_check_button_pressed(mb_left))
            {
            slot[selected] = slotty;
            selected += 1;
            }
            if(draw)
{
draw_set_colour(c_black)
draw_rectangle(736,544,736+128,544+360,false)
draw_set_colour(c_white)
draw_text_ext(736,544,string_hash_to_newline(str),15,20)
}
        }
        else
        {
        draw=false
        }
        slotty += 1;
    }
    why += 64;
}

ecs=room_width-64
why=0
repeat(7)
{
draw_rectangle(ecs,why,ecs+64,why+64,true)
draw_sprite(object_get_sprite(plants.plant[slot[slottyo]].object),0,ecs+32,why+32)
slottyo+=1
why+=64
}
slottyo=0



