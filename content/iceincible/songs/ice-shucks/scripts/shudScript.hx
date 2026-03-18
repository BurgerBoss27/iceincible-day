var dir:String = "bg/shuds/";

function onLoad(){
	skipCountdown = true;

    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.BLACK);
    blocker.alpha = 1;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    //add(blocker);
	
    bs1 = new BGSprite(dir + "image2", 300, 100);
    bs1.cameras = [camOther];
	bs1.scale.set(3, 1.5);
	bs1.visible = false;
	bs1.alpha = 0;
	add(bs1);
}

function onCreatePost(){

}

function onStepHit(){
    switch(curStep){
        case(128): 
            FlxTween.tween(blocker, {alpha: 0.0}, 10, {ease:FlxEase.LINEAR});
        case(256): 
            defaultCamZoom = 0.8;
		case(496):
			FlxTween.tween(camHUD, {alpha: 0.0}, 1, {ease:FlxEase.LINEAR});
		case(512):
		    defaultCamZoom = 1.0;
		case(576):
			defaultCamZoom = 0.8;
			FlxTween.tween(camHUD, {alpha: 1.0}, 0.2, {ease:FlxEase.LINEAR});
		case(960):
			defaultCamZoom = 0.9;
		case(1025):
			defaultCamZoom = 0.8;
		case(1088):
			defaultCamZoom = 0.9;
		case(1216):
			defaultCamZoom = 0.8;
		case(1600):
			defaultCamZoom = 0.9;
		case(1724):
			FlxTween.tween(camHUD, {alpha: 0.0}, 0.2, {ease:FlxEase.LINEAR});
			defaultCamZoom = 1.0;
		case(1776):
			bs1.visible = true;
			FlxTween.tween(bs1, {alpha: 1.0}, 0.2, {ease:FlxEase.LINEAR});
		case(1984):
			defaultCamZoom = 0.8;
			FlxTween.tween(camHUD, {alpha: 1.0}, 0.2, {ease:FlxEase.LINEAR});
			FlxTween.tween(bs1, {alpha: 0.0}, 0.2, {ease:FlxEase.LINEAR});
		case(2103):
			FlxTween.tween(camHUD, {alpha: 0.0}, 0.2, {ease:FlxEase.LINEAR});
			FlxTween.tween(bs1, {alpha: 1.0}, 1, {ease:FlxEase.LINEAR});
			defaultCamZoom = 1.0;
		case(2352):
			FlxTween.tween(camHUD, {alpha: 1.0}, 0.3, {ease:FlxEase.LINEAR});
		case(2368):
			FlxTween.tween(bs1, {alpha: 0.0}, 0.2, {ease:FlxEase.LINEAR});
			defaultCamZoom = 0.9;
		case(2432):
			defaultCamZoom = 0.8;
		case(2624):
			defaultCamZoom = 0.75;
		case(2628):
			defaultCamZoom = 0.8;
		case(2880):
			defaultCamZoom = 0.9;
		case(2912):
			defaultCamZoom = 0.85;
		case(3168):
			defaultCamZoom = 0.8;
		case(3424):
			defaultCamZoom = 0.9;
		case(3488):
			defaultCamZoom = 0.8;
    }
}