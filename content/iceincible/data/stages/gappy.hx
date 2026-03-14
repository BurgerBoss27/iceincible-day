var dir:String = "bg/gappy/";
var fnaf = newShader('fnaf');

function onLoad(){
    loopy = new FlxBackdrop(Paths.image(dir + 'loopingGray'), FlxAxes.X, 0, 0);
	loopy.scale.set(3, 2);
	loopy.scrollFactor.set(0, 0);
    loopy.velocity.x = 1000;
	loopy.visible = false;
    add(loopy);
	
    aura1 = new BGSprite(dir + "aura1", -570, -600, 1, 1);
	aura1.scale.set(1.3, 1.3);
	aura1.visible = false;
    add(aura1);
	
    aura2 = new BGSprite(dir + "aura2", -570, -700, 1, 1);
	aura2.scale.set(0.8, 0.8);
	aura2.alpha = 0.7;
	aura2.visible = false;
    add(aura2);

    b3 = new BGSprite(dir + "b3", -800, -260, 1, 1);
	b3.scrollFactor.set(0, 0);
	b3.antialiasing = false;
    add(b3);
	
    b2 = new BGSprite(dir + "b2", -900, -260, 1, 1);
	b2.scrollFactor.set(0.7, 0.7);
	b2.antialiasing = false;
    add(b2);
	
    b1 = new BGSprite(dir + "b1", -900, -260, 1, 1);
	b1.antialiasing = false;
    add(b1);
}

function onStepHit(){ //i didn't really want to do this in here but i kind of have to
    switch(curStep){
        case(1): //recursedSTART
			camGame.addShader(fnaf);
			defaultCamZoom = 0.9;
			cameraSpeed = 99999;
			camFollow.setPosition(150, 90);
			isCameraOnForcedPos = true;
			b1.visible = false;
			b2.visible = false;
			b3.visible = false;
			loopy.visible = true;
			aura1.visible = true;
			aura2.visible = true;
    }
}