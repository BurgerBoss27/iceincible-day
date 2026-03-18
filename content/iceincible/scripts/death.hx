import funkin.backend.PlayerSettings;
var controls = PlayerSettings.player1.controls;
var vid:FunkinVideoSprite;

var deathMap:Map<String,String> = [
    "iceincible-rap" => "1",
    "boidloids" => "bblade",
    "bobslaught" => "bob"
    "ceptualore" => "4",
    "ice-shucks" => "5",
    "too ceptual" => "6",
    "tippity" => "7",
    "gappy appy" => "gameover1",
    "iceincible fight" => "9",
];

function onCreatePost(){
    vid = new FunkinVideoSprite();
    vid.onFormat(()->{
        vid.setGraphicSize(1280, 720);
        vid.updateHitbox();
        vid.screenCenter();
        vid.camera =  camOther;
    });
    vid.load(Paths.video(deathMap[songName]));
    vid.alpha = 0;
    vid.onEnd(FlxG.resetState);
    // vid.play();
    add(vid);
}

function onGameOver(){
    isDead = true;
    KillNotes();
    

    FlxG.sound.music.volume = 0;
    audio.volume = 0;
    camHUD.visible = false;
    camGame.visible = false;

    vid.alpha = 1;
    vid.play();
}
/*
function onUpdate(elapsed){
    if(isDead)
        if(controls.ACCEPT){
            FlxG.resetState();
        } 
}*/