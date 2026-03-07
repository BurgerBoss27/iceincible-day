var blocker:FlxSprite;

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
			cameraSpeed = 1;
    }
}