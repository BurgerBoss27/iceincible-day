var dir:String = "bg/invincible/";

function onLoad(){
	gfGroup.visible = false;

    stage1 = new BGSprite(dir + "image", -100, 100, 1, 1);
	stage1.scale.set(2.5, 2.5);
    add(stage1);
	
    stage2 = new BGSprite(dir + "a", 50, 300, 1, 1);
	stage2.scale.set(3.5, 3.5);
	stage2.visible = false;
    add(stage2);
	
    stage3 = new BGSprite(dir + "b", -450, -650, 1, 1);
	stage3.scale.set(2.5, 2.5);
	stage3.visible = false;
    add(stage3);

    bday = new BGSprite(dir + "birthday", 0, 0, 1, 1);
	bday.origin.set(0, 0);
	bday.setGraphicSize(1280, 720);
	bday.cameras = [camOther];
	bday.alpha = 0;
    add(bday);

    pomni = new BGSprite(dir + "digital", 0, 0, 1, 1);
	pomni.scale.set(2.5, 2.5);
	pomni.alpha = 0;
	pomni.antialiasing = false;
	pomni.cameras = [camOther];
	pomni.screenCenter(FlxAxes.XY);
	pomni.x += 420;
    add(pomni);
}

function onStepHit(){
    switch(curStep){
		case(1280):
			stage1.visible = false;
			stage2.visible = true;
		case(1824):
			stage2.visible = false;
			stage3.visible = true;
		case(2432):
			FlxTween.tween(bday, {alpha: 1}, 30, {ease: FlxEase.linear});
		case(2656):
			FlxTween.tween(pomni, {alpha: 1}, 18, {ease: FlxEase.linear});
    }
}