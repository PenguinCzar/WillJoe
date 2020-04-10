if(ready){
	layer_hspeed("Backgrounds_1",0);
	layer_hspeed("Background",0);
	x+=5;
	if(x > 1024){
		transition(TRANS_MODE.NEXT);	
	}
}
if(ready2){
	oPlayer.visible = false;
	x+=5;
	if(x >= 192){
	oPlayer.x = x;
	oPlayer.y = y;
	oPlayer.visible = true;
	instance_destroy();
	}
}