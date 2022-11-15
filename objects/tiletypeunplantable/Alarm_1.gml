/// @description Insert description here
// You can write your code in this editor
x+=choose(-64,0,64)
y+=choose(-64,0,64)

if(x<0)
{
	x=1344
}
if(x>1344)
{
	x=0
}
if(y>=480)
{
	y=160+32
}
if(y<160+32)
{
	y=480-32
}
alarm[1]=360