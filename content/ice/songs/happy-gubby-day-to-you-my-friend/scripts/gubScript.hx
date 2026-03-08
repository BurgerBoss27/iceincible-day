var dir:String = "bg/gubby/";

function onLoad(){
    lol = new BGSprite(dir + "lol", 0, 0, 1, 1, ["lol"], true);
	lol.animation.stop();
	lol.cameras = [camHUD];
	lol.scale.set(1.8, 1.8);
    lol.origin.set(0, 0);
	lol.visible = false;
    add(lol);
}

function onStepHit(){
    switch(curStep){
		case(259):
			cameraSpeed = 99999;
			isCameraOnForcedPos = true;
			camFollow.setPosition(-400, 550);
			defaultCamZoom = 1.5;
		case(262):
			lol.visible = true;
			lol.animation.play("lol", true);
    }
}