var dir:String = "bg/shuds/";

function onLoad(){
	skipCountdown = true;

    blocker = new FlxSprite(0, 0);
    blocker.makeGraphic(FlxG.width + 5, FlxG.height + 5, FlxColor.BLACK);
    blocker.alpha = 1;
    blocker.cameras = [camOther];
    blocker.screenCenter(FlxAxes.XY);
    add(blocker);
}

function onCreatePost(){

}

function onStepHit(){
    switch(curStep){
        case(128): 
            FlxTween.tween(blocker, {alpha: 0.0}, 10, {ease:FlxEase.LINEAR});
    }
}