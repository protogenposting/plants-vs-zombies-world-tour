/// @description Insert description here
// You can write your code in this editor
image_speed=1
if(instance_exists(objLightController))
{
light = new BulbLight(objLightController.renderer, testy, 0, x, y);
}