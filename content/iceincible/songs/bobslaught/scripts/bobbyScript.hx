var blocker:FlxSprite;
var ogWinPos = [FlxG.stage.window.x, FlxG.stage.window.y];
var dir:String = "bg/bob/";

function onLoad(){
    haha = new BGSprite(dir + "haha", 0, 0, 1, 1);
	haha.cameras = [camOther];
	haha.alpha = 0;
	haha.origin.set(0, 0);
	haha.scale.set(4, 1.5);
	haha.antialiasing = false;
    add(haha);
	
    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.BLACK);
    blocker.alpha = 0;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    add(blocker);
	
    boys = new BGSprite(dir + "Animtheboys", 0, 0, 1, 1, ["theboys"], false);
	boys.animation.stop();
    boys.cameras = [camOther];
	boys.y = 190;
	boys.x = 360;
    boys.visible = false;
    boys.animation.finishCallback = ()->{
        boys.kill();
    }
    add(boys);
	
    am = new BGSprite(dir + "Anim2am", 0, 0, 1, 1, ["2am"], false);
	am.animation.stop();
    am.cameras = [camOther];
	am.y = 100;
	am.x = 290;
    am.visible = false;
    am.animation.finishCallback = ()->{
        am.kill();
    }
    add(am);
	
    beans = new BGSprite(dir + "Animbeans", 0, 0, 1, 1, ["beans"], false);
	beans.animation.stop();
    beans.cameras = [camOther];
	beans.y = 350;
	beans.x = 400;
    beans.visible = false;
    beans.animation.finishCallback = ()->{
        beans.kill();
    }
    add(beans);
}

function onCreatePost(){
    camFollow.setPosition(1000, 1100); //bob cam
    isCameraOnForcedPos = true;
	cameraSpeed = 99999;
}

function onStepHit(){ //im a fat fucking chud
    switch(curStep){
        case(22): 
            camFollow.setPosition(1200, 990); //ron cam
        case(35):
            camFollow.setPosition(1000, 1100); //bob cam
        case(38):
            camFollow.setPosition(1200, 990); //ron cam
        case(41):
            camFollow.setPosition(1000, 1100); //bob cam
        case(44):
            camFollow.setPosition(1200, 990); //ron cam
        case(48):
            camFollow.setPosition(1000, 1100); //bob cam
        case(60):
            camFollow.setPosition(1200, 990); //ron cam
        case(64):
            isCameraOnForcedPos = false; //no more cam
			defaultCamZoom = 0.6;
			cameraSpeed = 1.5;
		case(384):
			defaultCamZoom = 0.75;
			haha.alpha = 1;
			FlxTween.tween(haha, {alpha: 0.0}, 1, {ease:FlxEase.LINEAR});
		case(576):
			defaultCamZoom = 0.85;
		case(598):
			defaultCamZoom = 0.75;
		case(608): // fade buddy
			FlxTween.tween(blocker, {alpha: 1.0}, 9, {ease:FlxEase.LINEAR});
		case(640): // start of BEANS section
			cameraSpeed = 0.5;
			defaultCamZoom = 0.55;
			isCameraOnForcedPos = true;
			camFollow.setPosition(1700, 900);
		case(660): //660
			boys.animation.play("theboys", true);
			boys.visible = true;
		case(681): //681
			am.animation.play("2am", true);
			am.visible = true;
		case(700): //699
			beans.animation.play("beans", true);
			beans.visible = true;
		case(704): // end of BEANS section
			boys.visible = false;
			boys.animation.stop();
			am.visible = false;
			am.animation.stop();
			beans.visible = false;
			beans.animation.stop();
		    blocker.alpha = 0;
			blocker.visible = false;
			cameraSpeed = 1.5;
			cameraSpeed = 1.5;
			defaultCamZoom = 0.6;
			isCameraOnForcedPos = false;
		case(736):
			defaultCamZoom = 0.7;
		case(768):
			defaultCamZoom = 0.6;
		case(800):
			defaultCamZoom = 0.7;
		case(832):
			defaultCamZoom = 0.75;
		case(1107):
			FlxTween.num(0, 1, 1.5, {
				onUpdate: (t) -> {
					FlxG.stage.window.x = ogWinPos[0] + (FlxG.random.int(-100, 100) * t.value);
					FlxG.stage.window.y = ogWinPos[1] + (FlxG.random.int(-100, 100) * t.value);
				}
			});
    }
}