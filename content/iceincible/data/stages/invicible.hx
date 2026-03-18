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
}

function onStepHit(){
    switch(curStep){
		case(1280):
			stage1.visible = false;
			stage2.visible = true;
		case(1824):
			stage2.visible = false;
			stage3.visible = true;
    }
}