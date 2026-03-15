var dir:String = "bg/ceptualore/";

function onLoad(){
    one = new BGSprite(dir + "1", 1300, 570, 1, 1); //900 - out | 1300 - in
	one.cameras = [camOther];
	one.origin.set(0, 0);
    add(one);
	
    two = new BGSprite(dir + "2", 1300, 570, 1, 1);
	two.cameras = [camOther];
	two.origin.set(0, 0);
    add(two);
	
    three = new BGSprite(dir + "3", 1300, 570, 1, 1);
	three.cameras = [camOther];
	three.origin.set(0, 0);
    add(three);
	
    four = new BGSprite(dir + "4", 1300, 570, 1, 1);
	four.cameras = [camOther];
	four.origin.set(0, 0);
    add(four);
	
    five = new BGSprite(dir + "5", 1300, 570, 1, 1);
	five.cameras = [camOther];
	five.origin.set(0, 0);
    add(five);
}

function onCreatePost(){

}

function onStepHit(){
    switch(curStep){
        case(2341): //one
            FlxTween.tween(one, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2368): 
            one.x = 1300;
			
        case(2389): //two
            FlxTween.tween(two, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2407): 
            two.x = 1300;
			
        case(2412): //three
            FlxTween.tween(three, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2421): 
            three.x = 1300;
			
        case(2424): //four
            FlxTween.tween(four, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2435): 
            four.x = 1300;
			
        case(2438): //five
            FlxTween.tween(five, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2443): 
            five.x = 1300;
			
        case(2444): //one again
            FlxTween.tween(one, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2450): 
            one.x = 1300;
			
        case(2451): //two again
            FlxTween.tween(two, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2455): 
            two.x = 1300;
			
        case(2456): //three again
            FlxTween.tween(three, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2459): 
            three.x = 1300;
			
        case(2460): //four again
            FlxTween.tween(four, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2469): 
            four.x = 1300;
			
        case(2470): //five again
            FlxTween.tween(five, {x: 900.0}, 0.2, {ease:FlxEase.circOut});
        case(2495): 
            five.x = 1300;
    }
}