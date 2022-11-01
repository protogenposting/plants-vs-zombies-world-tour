/// @description Insert description here
// You can write your code in this editor
col=c_white
if(audio_is_playing(moosic2))
{
	col=c_green
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,col,1)