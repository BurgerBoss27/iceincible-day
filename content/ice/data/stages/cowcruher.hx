var dir:String = "bg/cow/";
var bg1:BGSprite;

function onLoad(){
    bg1 = new BGSprite(dir + "image", -980, -300, 1, 1);
	bg1.scale.set(1.1, 1.1);
    add(bg1);
    setVar("bg1", bg1);
}