var dir:String = "bg/invincible/";

function onLoad(){
	defaultCamZoom = 1;
	camFollow.setPosition(980, 600);
    isCameraOnForcedPos = true;
}

function onStepHit(){
    switch(curStep){
		case(16):
			cameraSpeed = 2.5;
			isCameraOnForcedPos = false;
			defaultCamZoom = 0.7;
    }
}