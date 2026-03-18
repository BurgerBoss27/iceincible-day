var dropShadow = newShader('dropShadow');

function onLoad(){
	dropShadow.setFloatArray('shadow_color', 0xFFD6E6FF);
    dropShadow.setFloat('_alpha', 1);
	dropShadow.setFloat('_disx', -10);
	dropShadow.setFloat('_disy', 10);
	dropShadow.setBool('inverted', false);
	dropShadow.setBool('knockout', false);
	dropShadow.setBool('inner', true);
	
	boyfriend.shader = dropShadow;
}