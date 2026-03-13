var vcrwithnoglitch = newShader('vcr with no glitch');
//var vhs = newShader('vhs');

var dir:String = "bg/tooty/";

function onLoad(){
	skipCountdown = true;

	camGame.addShader(vcrwithnoglitch);
	camHUD.addShader(vcrwithnoglitch);
	camOther.addShader(vcrwithnoglitch);
	
	camHUD.alpha = 0;
	
    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(5000, 5000, FlxColor.BLACK);
	blocker.x = -500;
	blocker.y = -500;
    add(blocker);
	
    staty = new BGSprite(dir + "Static", 0, 0, 1, 1, ["Static"], true);
    staty.cameras = [camOther];
	staty.scale.set(4, 4);
	staty.alpha = 0.1;
    add(staty);
	
    flash = new FlxSprite(0, 0);
    flash.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.WHITE);
	flash.alpha = 0;
    flash.cameras = [camOther];
    flash.screenCenter(FlxAxes.XY);
    add(flash);
	
    flashRed = new FlxSprite(0, 0);
    flashRed.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.RED);
	flashRed.alpha = 0;
    flashRed.cameras = [camOther];
    flashRed.screenCenter(FlxAxes.XY);
    add(flashRed);
	
	boyfriend.visible = false;
	gfGroup.visible = false;
	
	camFollow.setPosition(300, 250);
    isCameraOnForcedPos = true;
}

function onStepHit(){
    switch(curStep){
		case(1):
			flash.alpha = 1;
			FlxTween.tween(flash, {alpha: 0.0}, 1, {ease:FlxEase.LINEAR});
		case(22):
			FlxTween.tween(staty, {alpha: 1.0}, 1, {ease:FlxEase.LINEAR});
		case(56):
			FlxTween.tween(staty, {alpha: 0.1}, 1, {ease:FlxEase.LINEAR});
			FlxTween.tween(blocker, {alpha: 0.0}, 1, {ease:FlxEase.LINEAR});
			FlxTween.tween(camHUD, {alpha: 1.0}, 1, {ease:FlxEase.LINEAR});
		case(824):
			FlxTween.tween(staty, {alpha: 1.0}, 0.5, {ease:FlxEase.LINEAR});
			FlxTween.tween(blocker, {alpha: 1.0}, 0.5, {ease:FlxEase.LINEAR});
			FlxTween.tween(camHUD, {alpha: 0.0}, 0.5, {ease:FlxEase.LINEAR});
		case(856):
			camFollow.setPosition(300, 350);
			FlxTween.tween(staty, {alpha: 0.1}, 2, {ease:FlxEase.LINEAR});
			FlxTween.tween(blocker, {alpha: 0.0}, 2, {ease:FlxEase.LINEAR});
			flashRed.alpha = 1;
			FlxTween.tween(flashRed, {alpha: 0.0}, 2, {ease:FlxEase.LINEAR});
			FlxTween.tween(camHUD, {alpha: 1.0}, 2, {ease:FlxEase.LINEAR});
		case(1348):
			FlxTween.tween(blocker, {alpha: 1.0}, 1.5, {ease:FlxEase.LINEAR});
        case(1368): 
			defaultCamZoom = 0.65;
			camFollow.setPosition(700, 400);
			FlxTween.tween(blocker, {alpha: 0.0}, 2, {ease:FlxEase.LINEAR});
			gfGroup.visible = true;
			boyfriend.visible = true;
		case(2136):
			blocker.alpha = 1;
			flashRed.alpha = 1;
			FlxTween.tween(flashRed, {alpha: 0.0}, 3.5, {ease:FlxEase.LINEAR});
			camHUD.alpha = 0;
	}
}