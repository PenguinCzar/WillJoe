if(ready){
	draw_set_font(fMenu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	var txt = "Theres something here.";
	wl = string_length(txt);
	text_current = string_copy(txt,1,floor(letters));
	if(letters >= wl){
		
	}
	//draw_text((x+32)-2,64,txt);
	//draw_text((x+32)+2,64,txt);
	//draw_text((x+32),62,txt);
	//draw_text((x+32),66,txt);
	//draw_set_color(c_white);
	//draw_text((x+32),64,txt);
}