var dir:String = "bg/birthdayjit/";

function onLoad(){
	dadGroup.visible = false;
    bg1 = new BGSprite(dir + "image", -500, 000, 1, 1);
	bg1.scale.set(2, 1.9);
    add(bg1);
}