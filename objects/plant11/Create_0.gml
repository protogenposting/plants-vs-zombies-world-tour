reload=1500
sh=random_range(0,300)
hp=100
col=c_white
image_speed=0
ate=false

pfactive=false
pftime=30
pfi=0
pfr=10
if(instance_exists(objLightController))
{
light = new BulbLight(objLightController.renderer, testy, 0, x, y);
}