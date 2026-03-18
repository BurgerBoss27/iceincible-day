var dir:String = "bg/invincible/";

function onLoad(){
	defaultCamZoom = 1; //1.5 at start
	camFollow.setPosition(980, 600);
    isCameraOnForcedPos = true;
	
    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.BLACK);
    blocker.alpha = 0;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    add(blocker);
	
    bs1 = new BGSprite(dir + "bullshit1", -500, 0);
    bs1.cameras = [camOther];
	bs1.visible = false;
	bs1.alpha = 0;
	add(bs1);
	
    bs2 = new BGSprite(dir + "bullshit2", 800, 0);
    bs2.cameras = [camOther];
	bs2.visible = false;
	bs2.alpha = 0;
	add(bs2);
}

function onStepHit(){
    switch(curStep){
		case(16):
			cameraSpeed = 2.5;
			isCameraOnForcedPos = false;
			defaultCamZoom = 0.7;
		case(272):
			defaultCamZoom = 0.8;
		case(528):
			defaultCamZoom = 0.7;
		case(784):
			defaultCamZoom = 0.8;
		case(1028):
			defaultCamZoom = 0.7;
			FlxTween.tween(blocker, {alpha: 1.0}, 1.5, {ease:FlxEase.LINEAR});
		case(1040):
			bs1.visible = true;
			FlxTween.tween(bs1, {alpha: 1.0}, 10, {ease:FlxEase.LINEAR});
			FlxTween.tween(bs1, {x: 500}, 20, {ease:FlxEase.LINEAR});
			
			isCameraOnForcedPos = false;
		case(1152):
			FlxTween.tween(bs1, {alpha: 0.0}, 5, {ease:FlxEase.LINEAR});
		case(1168):
			bs2.visible = true;
			FlxTween.tween(bs2, {alpha: 1.0}, 6, {ease:FlxEase.LINEAR});
			FlxTween.tween(bs2, {x: -500}, 15, {ease:FlxEase.LINEAR});
		case(1248):
			FlxTween.tween(bs2, {alpha: 0.0}, 3, {ease:FlxEase.LINEAR});
		case(1296):
			bs1.visible = false;
			bs2.visible = false;
			blocker.visible = false;
			defaultCamZoom = 1.2;
		    modManager.setValue("alpha", 1, 1);
			modManager.setValue("transformX", -310, 0);
		case(1808):
			blocker.visible = true;
		case(1824):
		    modManager.setValue("alpha", 0, 1);
			modManager.setValue("transformX", 0, 0);
			defaultCamZoom = 0.25;
			camFollow.setPosition(650, 0);
			isCameraOnForcedPos = true;
		case(1840):
			blocker.visible = false;
		case(2352):
			blocker.visible = true;
    }
}