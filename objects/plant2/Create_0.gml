reload=1500-(5*60)
sh=reload+random_range(0,50)
hp=100
col=c_white

action_set_alarm(30, 0);

pfactive=false
pftime=30
pfi=0
pfr=10

if(instance_exists(objLightController))
{
light = new BulbLight(objLightController.renderer, testy, 0, x, y);
}