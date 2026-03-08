var dir:String = "bg/plime/";

function onLoad(){
	dadGroup.visible = false;
    bg1 = new BGSprite(dir + "scary", -300, 0, 1, 1);
	bg1.scale.set(0.8, 0.8);
    add(bg1);
	
    ludens = new BGSprite(dir + "ludens", 300, -500, 1, 1);
	ludens.scale.set(0.5, 0.5);
    add(ludens);
}