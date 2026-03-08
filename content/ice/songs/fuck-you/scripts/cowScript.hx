var dir:String = "bg/cow/";
var blocker:FlxSprite;
var bg1:BGSprite;
var cow:BGSprite;

function onLoad(){
	bg1 = getVar("bg1");
	
	dadGroup.visible = false;
	game.playHUD.iconP2.visible = false;
	
    cow = new BGSprite(dir + "cow", -850, -900, 1, 1);
	cow.scale.set(1.1, 1.1);
    add(cow);

    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 1, FlxG.height + 1, FlxColor.BLACK);
    blocker.alpha = 0;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    add(blocker);
}

function onCreatePost(){
    camFollow.setPosition(0, 200);
    isCameraOnForcedPos = true;
}

function postModifierRegister(){
    modManager.setValue("alpha", 1, 1);
}

function onStepHit(){
    switch(curStep){
		case(571):
			FlxTween.tween(cow, {y: 0}, 1, {ease:FlxEase.bounceOut});
        case(602):
            FlxTween.tween(blocker, {alpha: 1.0}, 0.5, {ease:FlxEase.LINEAR});
        case(608):
			cow.visible = false;
            blocker.visible = false;
			modManager.setValue("transformX", -310, 0);
			dadGroup.visible = true;
			boyfriendGroup.visible = false;
			bg1.visible = false;
		    game.playHUD.scoreTxt.visible = false;
			game.playHUD.timeBar.visible = false;
			game.playHUD.timeTxt.visible = false;
			game.playHUD.showRating = false;
			game.playHUD.showRatingNum = false;
			game.playHUD.iconP1.visible = false;
			
    }
}