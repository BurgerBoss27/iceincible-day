var dir:String = "bg/gappy/";
var colorcorrection = newShader('colorcorrection');

function onLoad(){
	colorcorrection.setFloat('customred', 0);
	colorcorrection.setFloat('customgreen', 0);
	colorcorrection.setFloat('customblue', 0);
	
	colorcorrection.setFloat('brightness', 0);
	colorcorrection.setFloat('contrast', 1);
	colorcorrection.setFloat('saturation', 1);
	
	camGame.addShader(colorcorrection);
	camHUD.addShader(colorcorrection);
	
    blocker2 = new FlxSprite(0, 0);
    blocker2.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.BLACK);
    blocker2.visible = false;
    blocker2.cameras = [camOther];
    blocker2.screenCenter(FlxAxes.XY);
    add(blocker2);

    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.WHITE);
    blocker.alpha = 1;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    //add(blocker);
}

function onStepHit(){
    switch(curStep){
        case(1): 
			FlxTween.tween(blocker, {alpha: 0.0}, 10, {ease:FlxEase.LINEAR});
		case(128):
			defaultCamZoom = 0.8;
		case(320):
			defaultCamZoom = 0.85;
		case(384):
			defaultCamZoom = 0.7;
		case(408):
			defaultCamZoom = 0.9;
		case(416):
			defaultCamZoom = 0.8;
		case(496):
			defaultCamZoom = 0.75;
		case(512):
			defaultCamZoom = 0.8;
		case(624): //shader shit
			FlxTween.num(1, 10, 5, {
				ease: FlxEase.quadIn,
				onUpdate: (t) -> {
					colorcorrection.setFloat('contrast', t.value);
				}
			});
			FlxTween.num(1, 0, 5, {
				ease: FlxEase.quadIn,
				onUpdate: (t) -> {
					colorcorrection.setFloat('saturation', t.value);
				}
			});
		case(640):
			defaultCamZoom = 0.7;
		case(672): //flash, disable contrast, enable black screen
			isCameraOnForcedPos = true;
			blocker.alpha = 1;
			FlxTween.tween(blocker, {alpha: 0.0}, 5, {ease:FlxEase.LINEAR});
			blocker2.visible = true;
			defaultCamZoom = 1.3;
			
		    modManager.setValue("alpha", 0.8, 1);
			modManager.setValue("transformX", 320, 1);
			
			modManager.setValue("transformX", -310, 0);
			
			camFollow.setPosition(150, 50);
			
			game.playHUD.timeBar.visible = false;
			game.playHUD.timeTxt.visible = false;
			game.playHUD.healthBar.visible = false;
			game.playHUD.iconP1.visible = false;
			game.playHUD.iconP2.visible = false;
		case(680): //go fuck yourself, and it doesnt even work either
			boyfriend.alpha = 0;
			gfGroup.alpha = 0;
		case(768): //fade out black screen
			colorcorrection.setFloat('saturation', 1);
			colorcorrection.setFloat('contrast', 1);
			FlxTween.tween(blocker2, {alpha: 0.0}, 5, {ease:FlxEase.LINEAR});
		case(1088):
			camFollow.setPosition(150, 90);
			defaultCamZoom = 0.9;
			FlxTween.tween(boyfriend, {alpha: 1.0}, 0.2, {ease:FlxEase.LINEAR});
			FlxTween.tween(gfGroup, {alpha: 1.0}, 0.2, {ease:FlxEase.LINEAR});
		case(2400):
			FlxTween.tween(blocker2, {alpha: 1.0}, 5, {ease:FlxEase.LINEAR});
    }
}