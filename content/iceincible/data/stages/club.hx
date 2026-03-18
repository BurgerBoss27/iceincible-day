import funkin.audio.visualize.SpectogramSprite;
import funkin.audio.visualize.PolygonSpectogram;
import funkin.audio.visualize.PolygonSpectogram.VISTYPE;
import funkin.audio.visualize.SpectogramSprite.SPECDIRECTION;

import flixel.ui.FlxBar;
import flixel.ui.FlxBarFillDirection;

var barGroup:FlxSpriteGroup = new FlxSpriteGroup();
var barPos:Array<Float> = [360, 270];

var bg:BGSprite;
var stage:FlxSprite;
var spot1:BGSprite;
var spot2:BGSprite;
var fgBops:FlxSprite;
var slGreen:BGSprite;
var slPurple:BGSprite;

var bgBopsY:Float = 690;


function onCreatePost(){
    playHUD.iconP1.visible = false;
	playHUD.iconP2.visible = false;
	playHUD.healthBar.visible = false;
	playHUD.timeBar.visible = false;
	playHUD.timeTxt.visible = false;
    skipCountdown = true;


    spot1.zIndex = dad.zIndex + 1;
    spot2.zIndex = dad.zIndex + 2;
    fgBops.zIndex = dad.zIndex + 5;
    slGreen.zIndex = dad.zIndex + 6;
    slPurple.zIndex = dad.zIndex + 7;


    modManager.setValue("alpha", 1, 1);
}

function onLoad(){ 

    introFade = new FlxSprite(0, 0);
    introFade.scrollFactor.set(0, 0);
    introFade.makeGraphic(1280, 720, FlxColor.BLACK);
    introFade.cameras = [camOther];

    cover = new BGSprite('bg/tippity/HalftoneVignetteWider', 0, 0);
    cover.cameras = [camHUD];
    cover.scale.set(0.667, 0.667);
    cover.origin.set(0, 0);
    cover.alpha = 0.8;

    
    tvBg = new BGSprite('bg/tippity/tvBg', 438, 40);
    tvBg.antialiasing = false;
    tvBg.scale.set(2, 2);

    barEmpty = new FlxSprite(barPos[0] + 10, barPos[1] + 10).loadGraphic(Paths.image("bg/tippity/barEmpty"));
    barEmpty.scale.set(2, 2);
    barEmpty.antialiasing = false;
    barEmpty.updateHitbox();
    
    barBorder = new FlxSprite(barPos[0] - 3, barPos[1]).loadGraphic(Paths.image("bg/tippity/barBorder"));
    barBorder.scale.set(2.05, 2.1);
    barBorder.antialiasing = false;
    barBorder.updateHitbox();
    
    barFart = new FlxBar(barPos[0] + 10, barPos[1] + 10, FlxBarFillDirection.RIGHT_TO_LEFT, 245, 137, null, null, 0, 2, false);
    barFart.createImageBar(null, Paths.image("bg/tippity/barFull"), FlxColor.TRANSPARENT, FlxColor.LIME);
    barFart.scale.set(2, 2);
    barFart.antialiasing = false;
    barFart.updateHitbox();

    versus = new FlxSprite(540, 90);
    versus.frames = Paths.getSparrowAtlas("bg/tippity/versus");
    versus.animation.addByPrefix('versus', 'versus', 24, true);
    versus.animation.play("versus");
    versus.antialiasing = false;
    versus.scale.set(2, 2);

    icon1 = new BGSprite('bg/tippity/icon1', 325, 80);
    icon1.scale.set(0.8, 0.8);
    icon1.angle = -8;
    icon1.alpha = 0.75;

    icon2 = new BGSprite('bg/tippity/icon2', 760, 80); //760 meme
    icon2.antialiasing = false;
    icon2.scale.set(0.8, 0.8);
    icon2.angle = 8;
    icon2.alpha = 0.75;

    tvOverlay = new FlxSprite(438, 40);
    tvOverlay.frames = Paths.getSparrowAtlas("bg/tippity/staticOverlay");
    tvOverlay.animation.addByPrefix('staticOverlay', 'staticOverlay', 24, true);
    tvOverlay.animation.play("staticOverlay");
    tvOverlay.antialiasing = false;
    tvOverlay.scale.set(2, 2);
    tvOverlay.blend = BlendMode.LIGHTEN;
    tvOverlay.alpha = 0.18;





    bg = new BGSprite('bg/tippity/bg', -60, -149);
    bg.antialiasing = false;
    bg.scale.set(2, 2);

    miniTvBg = new BGSprite('bg/tippity/tvBg', 1060, 360);
    miniTvBg.antialiasing = false;
    miniTvBg.setGraphicSize(130, 95);

	

    stage = new FlxSprite(-20, -97);
    stage.frames = Paths.getSparrowAtlas("bg/tippity/stage");
    stage.animation.addByIndices("2", "stage", [1], "", 24, false, false, false);
    stage.animation.addByIndices("1", "stage", [6], "", 24, false, false, false);
    stage.animation.play("2");
    stage.antialiasing = false;
    stage.scale.set(2, 2);

    spot1 = new BGSprite('bg/tippity/iceSpotlight', 1050, -1000);
    spot1.antialiasing = false;
    spot1.scale.set(2, 2);
    spot1.origin.set(365, 5);
    spot1.alpha = 0.25;
    spot1.blend = BlendMode.ADD;
    FlxTween.tween(spot1, {angle: 1}, 5, {ease:FlxEase.sineInOut, type:4});

    spot2 = new BGSprite('bg/tippity/tippitySpotlight', -860, -830);
    spot2.antialiasing = false;
    spot2.scale.set(2, 2);
    spot2.origin.set(10, 10);
    spot2.alpha = 0.25;
    spot2.blend = BlendMode.ADD;
    FlxTween.tween(spot2, {angle: 2}, 4, {ease:FlxEase.sineInOut, type:4});


    fgBops = new FlxSprite(-20, bgBopsY);
    fgBops.frames = Paths.getSparrowAtlas('bg/tippity/fgBops');
    fgBops.animation.addByIndices("1", "fgBops", [0, 1, 2, 3, 4], "", 24, false, false, false);
    fgBops.animation.addByIndices("2", "fgBops", [5, 6, 7, 8, 9], "", 24, false, false, false);
    fgBops.animation.play("2", false);
    fgBops.antialiasing = false;
    fgBops.scrollFactor.set(1.4, 1.4);
    fgBops.scale.set(2, 2);

    kistal = new FlxSprite(560, -1000);
    kistal.frames = Paths.getSparrowAtlas("bg/tippity/kistal");
    kistal.animation.addByPrefix('kistal', 'kistal', 24, true);
    kistal.animation.play("kistal");
    kistal.antialiasing = false;
    kistal.scale.set(2, 2);


    slGreen = new BGSprite('bg/tippity/glow1', -500, -50);
    slGreen.antialiasing = false;
    slGreen.scale.set(2, 2);
    slGreen.alpha = 0;
    slGreen.blend = BlendMode.ADD;

    slPurple = new BGSprite('bg/tippity/glow2', -500, -50);
    slPurple.antialiasing = false;
    slPurple.scale.set(2, 2);
    slPurple.alpha = 0;
    slPurple.blend = BlendMode.ADD;


    add(tvBg);
    barGroup.add(barBorder);
    barGroup.add(barEmpty);
    barGroup.add(barFart);
    add(barGroup);
    add(versus);
    add(icon1);
    add(icon2);
    add(tvOverlay);

    add(bg);
    add(miniTvBg);
    //mini tv viz
	add(stage);
    add(spot1);
    add(spot2);
    //fgspeakerrs
    add(fgBops);
    add(kistal);
    add(slGreen);
    add(slPurple);

    
    add(cover);
    add(introFade);





}

function onBeatHit(){
    fgBops.y += 10;
    FlxTween.cancelTweensOf(fgBops);
    FlxTween.tween(fgBops, {y: bgBopsY}, 0.3, {ease: FlxEase.cubeOut});
    iconBop();

    if(curBeat % 2 == 1){
        fgBops.animation.play("1", false);
    }
    else{
        fgBops.animation.play("2", false);
    }
}

function onSectionHit(){
    if(curSection % 2 == 1){
        stage.animation.play("1", false);
        slPurple.alpha = 0.8;
        FlxTween.tween(slPurple, {alpha: 0.15}, 1, {ease:FlxEase.sineInOut});

    }
    else{
        stage.animation.play("2", false);
        slGreen.alpha = 0.8;
        FlxTween.tween(slGreen, {alpha: 0.15}, 1, {ease:FlxEase.sineInOut});        
    }
}

function onUpdate(elapsed){
	barFart.value = health;
}


function onStepHit(){
    switch(curStep){
        case(4):
            introFade.alpha = 0.75;
        case(8):
            introFade.alpha = 0.5;
        case(12):
            introFade.alpha = 0.25;
        case(16):
            introFade.visible = false;
        case(784):
            FlxTween.tween(kistal, {y: 470}, 4, {ease: FlxEase.bounceOut});
        case(1296):
            introFade.visible = true;
            introFade.alpha = 1;
    }
}


function iconBop(){
    icon1.scale.set(0.9, 0.9);
    icon2.scale.set(0.9, 0.9);
    icon1.angle = -11;
    icon2.angle = 11;
    FlxTween.tween(icon1, {"scale.x": 0.8, "scale.y": 0.8}, 0.4, {ease: FlxEase.cubeOut});
    FlxTween.tween(icon2, {"scale.x": 0.8, "scale.y": 0.8}, 0.4, {ease: FlxEase.cubeOut});
    FlxTween.tween(icon1, {angle: -8}, 0.4, {ease: FlxEase.cubeOut});
    FlxTween.tween(icon2, {angle: 8}, 0.4, {ease: FlxEase.cubeOut});
}