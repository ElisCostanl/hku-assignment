#region MANCALA
if (room = rm_mancala)  and (!instance_exists(obj_mancala_stone)) and (!instance_exists(obj_mancala_game_over))
{
	global.mancala_game_over = true; 
	
	if (global.score_player1 > global.score_player2)
	{
		instance_create_layer(440.5, 207, "text", obj_loser); 
		instance_create_layer(485.5, 498, "text", obj_winner); 
	}
	
	if (global.score_player1 < global.score_player2)
	{
		instance_create_layer(440.5, 207, "text", obj_winner); 
		instance_create_layer(485.5, 498, "text", obj_loser); 
	}
	global.score_player1 = 0;
	global.score_player2 = 0;  
}
#endregion 

