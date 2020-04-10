if(doit){
	letters += spd;
	text_current = string_copy(text[textnumc-1],1,floor(letters));

	draw_set_font(fMenu);

	if(letters >= length){
		textnumc++;	
		if(textnumc > textnum){
			oSPlayer.ready = true;
			instance_destroy();	
		}else{
			lenght = string_length(text[textnumc-1]);
			text_current = "";
			letters = 0;
		}
	}
}