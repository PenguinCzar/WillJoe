menu_x += (menu_x_target - menu_x) / menu_speed;

if(menu_control){
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
		menu_x_target = gui_width + 200;
		menu_commited = menu_cursor;
		menu_control = false;
	}
}

if(menu_x > gui_width + 150) && (menu_commited != -1){
	if(menu_commited = 2){
		oText.doit = true;
		instance_destroy();
	}else if(menu_commited = 0){
		game_end();	
	}else if(menu_commited = 1){
		game_end();		
	}
}