if(ready){
	layer_hspeed("Backgrounds_1",0);
	layer_hspeed("Background",0);
	x+=5;
	if(x > 1024){
		transition(TRANS_MODE.NEXT);	
	}
}