var dir:String = "bg/gappy/";

function onLoad(){
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