var dir:String = "bg/invincible/";

function onLoad(){
	gfGroup.visible = false;

    stageback = new BGSprite(dir + "image", -100, 100, 1, 1);
	stageback.scale.set(2.5, 2.5);
    add(stageback);
}