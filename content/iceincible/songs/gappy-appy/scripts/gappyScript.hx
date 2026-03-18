var dir:String = "bg/gappy/";

function onLoad(){
    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.WHITE);
    blocker.alpha = 1;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    add(blocker);
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
		case(640):
			defaultCamZoom = 0.7;
		case(768):
			
    }
}