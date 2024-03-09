event_inherited()

spd=0.5
hp=32

nspd=0.5

hitsprite=brownflash

armor=conehead
armorhit=conehit

ogsprite=sprite1

variant=choose(0,1,2)

if(variant==1)
{
	nspd=1
	damage=99999
}
if(variant==2)
{
	hp=10
	nspd=-0.5
	function special_function(){
		var _inst=instance_create_depth(x,y,depth,bulletbad)
		_inst.speed=5
		_inst.direction=180+random_range(-30,30)
		if(x>room_width)
		{
			hp--
		}
	}
}