myseq = seq1;
seq=layer_sequence_create("Compatibility_Instances_Depth_0", 0, 0, myseq);
layer_sequence_y(seq,y)
owny=y
ownx=x
col=collision_line(room_width, y, x, y, basiczombie, true, true)
if(!col)
{
	instance_destroy()
}
if(col)
{
target=col
targetx=target.x-(target.spd*60)
audio_play_sound(pop,1000,false)
}