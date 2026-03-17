var dir:String = "bg/rap/";

function onLoad(){
	gfGroup.visible = true;

    stageback = new BGSprite(dir + "castle", 300, 150, 1, 1);
	stageback.scale.set(3, 3);
    add(stageback);
}

function onCreatePost(){
    game.sectionHit();
    game.camFollow.setPosition(750, 550);
    game.isCameraOnForcedPos = true;
}