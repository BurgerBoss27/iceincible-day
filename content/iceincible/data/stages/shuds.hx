var dir:String = "bg/shuds/";

function onLoad(){
    stageback = new BGSprite(dir + "shuds", 0, 200, 1, 1);
	stageback.scale.set(2.7, 2.7);
    add(stageback);
}