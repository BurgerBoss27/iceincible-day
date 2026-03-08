var dir:String = "bg/gubby/";

function onLoad(){
    bg1 = new BGSprite(dir + "image", -300, 100, 1, 1);
	bg1.scale.set(1.8, 1.8);
    add(bg1);
	
    gub1 = new BGSprite(dir + "gub1", -300, 600, 1, 1);
	gub1.antialiasing = false;
	gub1.scale.set(1.8, 1.8);
    add(gub1);
	
    gub2 = new BGSprite(dir + "gub2", 0, 300, 1, 1);
	gub2.antialiasing = false;
	gub2.scale.set(1.8, 1.8);
    add(gub2);
	
    gub3 = new BGSprite(dir + "gub3", -500, 250, 1, 1);
	gub3.antialiasing = false;
	gub3.scale.set(1.8, 1.8);
    add(gub3);
}