var dir:String = "bg/bey/";

function onLoad(){
	gfGroup.visible = true;

    stageback = new BGSprite(dir + "bey", 300, 150, 1, 1);
	stageback.scale.set(1.4, 1.5);
    add(stageback);
}

function onCreatePost(){
    game.sectionHit();
    game.camFollow.setPosition(750, 550);
    game.isCameraOnForcedPos = true;
}