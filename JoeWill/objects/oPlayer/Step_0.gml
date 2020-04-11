#region//Get Player Input
if (hascontrol)
{
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D"))  || keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
	key_jump_held = keyboard_check(vk_space);
	
	
}	
	else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
#endregion
#region//Horizontal Collision
	
			if (place_meeting(x+hsp,y,oWall)) 
		{
				while (!place_meeting(x+sign(hsp),y,oWall))
				{
					x = x + sign(hsp);
				}
				hsp = 0;
				
		}
		x = x + hsp;

		//Vertical Collision
		if (place_meeting(x,y+vsp,oWall)) 
		{
				while (!place_meeting(x,y+sign(vsp),oWall))
				{
					y = y + sign(vsp);
					
				}
				vsp = 0;
		}
		y = y + vsp;




#endregion
#region	Jumps and Stuff
//Calculate movement
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;

//Jumping
if place_meeting(x,y+1,oWall)
{
	jumps = jumpsmax;
   walljump = true;

}

if (place_meeting(x+hsp,y,oWall)) and (key_jump) and (walljump == true)
{
	jumps = jumpsmax + 1;
	walljump = false;
}




if (key_jump) && (jumps > 0)
{
	jumps -= 1;
	vsp = -jumpspeed;
	
}

if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4);



#endregion
#region check death
if(y >= 1536){
	respawn("Fell");
}
#endregion
#region //Animation
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sprite5;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;

	}
	else 
	{
		
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = sprite5;
		}
		else
		{
			sprite_index = ghostmove;
		}
	}

	if (hsp != 0) image_xscale = sign(hsp);
#endregion


