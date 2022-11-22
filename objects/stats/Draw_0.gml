depth=0
draw_set_halign(fa_left)
col=c_black
ecs=32+64*5
why=160
repeat(5)
{
repeat(11)
{
draw_set_colour(col)
draw_rectangle(ecs,why,ecs+64,why+64,true)
draw_set_colour(c_white)
ecs+=64
}
ecs=32+64*5
why+=64
}
if(instance_number(basiczombie)>=5)
{
audio_sound_gain(hats,100,600)
}
else
{
audio_sound_gain(hats,0.01,600)
}

depth=-100000

if(video)
{
	draw_rectangle_color(room_width/2, room_height/2-256,room_width/2+256+128, room_height/2,c_black,c_black,c_black,c_black,false)
	draw_text(room_width/2, room_height/2-256,"me when i unlock a new plant:")
	var numy=0
	var why=room_height/2-256+32
	repeat(array_length(plant))
	{
		draw_text(room_width/2+64, why,plants.plant[plant[numy]].desc)
		draw_sprite(object_get_sprite(plants.plant[plant[numy]].object),0,room_width/2,why)
		why+=32
		numy+=1
	}
var _data = video_draw();
var _status = _data[0];

if (_status == 0)
{
    var _surface = _data[1];

    draw_surface(_surface, room_width/2, room_height/2);
}
}