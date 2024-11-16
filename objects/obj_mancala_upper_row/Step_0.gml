if (!place_meeting(x, y, obj_mancala_stone)) and (instance_exists(obj_mancala_lower_row))
{
	global.game_over = true; 
	instance_create_layer(335.5, 349, "text", obj_game_over); 
	instance_destroy(); 
}

