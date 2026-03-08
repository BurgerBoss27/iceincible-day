var dir:String = "bg/gappy/gappyapp";

function onLoad(){
	dadGroup.visible = true;
    bg1 = new BGSprite(dir + "image", -500, 000, 1, 1);
	bg1.scale.set(1.8, 1.8);
    add(bg1);
}