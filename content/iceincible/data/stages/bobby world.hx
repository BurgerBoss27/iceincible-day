var dir:String = "bg/bob/";
var sky:BGSprite;

function onLoad(){
    sky = new BGSprite(dir + "sky", -900, -400, 1, 1);
	sky.scrollFactor.set(0.1, 0.1);
	sky.scale.set(0.87, 0.87);
    sky.origin.set(0, 0);
    add(sky);
	
    sun = new BGSprite(dir + "sunFixe", 0, 0, 1, 1, ["sunstuff"], true);
	sun.scrollFactor.set(0.1, 0.1);
    sun.origin.set(0, 0);
    sun.x = 600;
    sun.y = -500;
    add(sun);
	
	hill2 = new BGSprite(dir + "hill2", -500, -500, 1, 1);
	hill2.scrollFactor.set(0.2, 0.2);
    hill2.origin.set(0, 0);
    add(hill2);
	
	hill1 = new BGSprite(dir + "hill1", -200, -500, 1, 1);
	hill1.scrollFactor.set(0.4, 0.4);
    hill1.origin.set(0, 0);
    add(hill1);
	
	ground = new BGSprite(dir + "ground", 0, 0, 1, 1);
    ground.origin.set(0, 0);
    add(ground);
}