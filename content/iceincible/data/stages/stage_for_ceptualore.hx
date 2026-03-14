var dir:String = "bg/ceptualore/";

function onLoad(){
    stageback = new BGSprite(dir + "live_bg_1", -100, 0, 1, 1);
	stageback.scale.set(2, 2);
	stageback.scrollFactor.set(0.9, 0.9);
    add(stageback);
}