var vcrwithnoglitch = newShader('vcr with no glitch');
//var vhs = newShader('vhs');

function onLoad(){
	camGame.addShader(vcrwithnoglitch);
	camHUD.addShader(vcrwithnoglitch);
	
	boyfriend.visible = false;
	gfGroup.visible = false;
	
	camFollow.setPosition(300, 250);
    isCameraOnForcedPos = true;
}

function onStepHit(){
    switch(curStep){
        case(1368): 
            boyfriend.visible = true;
			gfGroup.visible = true;
	}
}