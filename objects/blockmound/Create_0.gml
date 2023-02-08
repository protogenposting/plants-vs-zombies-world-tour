/// @description Insert description here
// You can write your code in this editor
spd=0
hp=200
i=0

nspd=0

frozen=false

withered=false

zapped=false

var p1 = part_type_create();

if(place_meeting(x,y,tiletypewater))
{
	instance_destroy()
}
nutted=false

elected=false

hitty=false

hitsprite=brownflash

armor=-1
armorhit=-1

ogsprite=sprite1

col=c_white

//Create a new occluder that the player will use to block light
		occluder = new BulbDynamicOccluder(objLightController.renderer);

		//Move the occluder on top of the player
		occluder.x = x;
		occluder.y = y;

		//Define a simple rectangular occluder that fits the bounding box of the player's sprite
		//Note that edge coordinates are relative to the occluder's x/y position
		//N.B. Don't forget to give objPlayer a sprite otherwise this code won't work!
		occluder.AddEdge(bbox_left  - x, bbox_top    - y, bbox_right - x, bbox_top    - y);
		occluder.AddEdge(bbox_right - x, bbox_top    - y, bbox_right - x, bbox_bottom - y);
		occluder.AddEdge(bbox_right - x, bbox_bottom - y, bbox_left  - x, bbox_bottom - y);
		occluder.AddEdge(bbox_left  - x, bbox_bottom - y, bbox_left  - x, bbox_top    - y);