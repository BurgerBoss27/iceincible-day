// Automatically converted with https://github.com/TheLeerName/ShadertoyToFlixel

#pragma header

#define iResolution vec3(openfl_TextureSize, 0.)
#define iChannel0 bitmap
#define texture flixel_texture2D

// variables which are empty, they need just to avoid crashing shader
uniform vec4 iMouse;

// end of ShadertoyToFlixel header



void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    
    float depth = 5.0f;
    float mouse_speed_divisor = 800.0f;

	float dx = distance(uv.x, .5f);
    float dy = distance(uv.y, .5f);
    
    
    float offset = (dx*.2) * dy;
    
    float dir = 0.;
    if (uv.y <= .5) 
        dir = 1.0;
    else
        dir = -1.;
    
    vec2 coords = vec2(uv.x, uv.y + dx*(offset*depth*dir));
    
    vec2 nuv = coords + iMouse.xy/mouse_speed_divisor;
    //vec2 nuv = coords + vec2(iMouse.x/mouse_speed_divisor,0.);
    
    fragColor = texture(iChannel0, nuv); 
}





void main() {
	mainImage(gl_FragColor, openfl_TextureCoordv*openfl_TextureSize);
}