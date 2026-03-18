import funkin.backend.PlayerSettings;
var controls = PlayerSettings.player1.controls;
var vid:FunkinVideoSprite;

var deathMap:Map<String,String> = [
    "iceincible-rap" => "icerapgameover",
    "boidloids" => "bblade",
    "bobslaught" => "bob"
    "ceptualore" => "chud",
    "ice-shucks" => "shucksdeath",
    "too ceptual" => "tooceptual",
    "tippity" => "tpt",
    "gappy appy" => "gameover1",
    "iceincible fight" => "invincibledeath",
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

function onPause(){
    if(isDead){
        return Function_Stop;
    } else return Function_Continue;
}

/*
function onUpdate(elapsed){
    if(isDead)
        if(controls.ACCEPT){
            FlxG.resetState();
        } 
}*/