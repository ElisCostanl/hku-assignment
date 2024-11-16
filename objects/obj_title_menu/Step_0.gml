//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down); 
accept_key = keyboard_check_pressed(vk_space); 

//store number of options in current menu
op_length = array_length(option[menu_level])

//move through menu
pos += down_key - up_key; 
if pos >= op_length {pos = 0}; 
if pos < 0 {pos = op_length-1}; 


//using the options
if accept_key
{
	var _snl = menu_level
	
	switch (menu_level) 
	{
		case 0:
			switch(pos)
			{
				//start game
				case 0: menu_level = 1; break; 
				//quit game
				case 1: game_end(); break; 
			}
	break; 
	
	//settings menu
	case 1: 
		switch(pos)
		{
			//choose the game
			case 0: menu_level = 2; break; 
			//back
			case 1: menu_level = 0; break;
		}
		break; 
	case 2: 
		switch(pos)
		{
			//mancala, 2 players
			case 0: room_goto(rm_mancala); break; 
			//mehen, 3 players
			case 1: room_goto(rm_mehen); break; 
			//patolli, 4 players
			case 2: room_goto(rm_patolli); break; 
			//back
			case 3: menu_level = 1; break
		}
	}
		if _snl != menu_level {pos = 0};
		op_length = array_length(option[menu_level])
}