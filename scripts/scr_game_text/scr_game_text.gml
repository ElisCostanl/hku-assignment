/// @param _text_id
function scr_game_text(_text_id){
	switch(_text_id)
	{
	#region MANCALA
		case "mancala": 
		scr_text("so you have chosen mancala, this is a game that was first played in 6000 BC in jordany")
		scr_text("this makes it one of the oldest boardgames to date, it was played through out whole afrika with different version, like the four rank board")
		scr_text("would you like to know the rules")
			scr_option("please tell me the rules", "npc1 - yes")
			scr_option("no let me play", "npc1 - no")
		break; 
		case "npc1 - yes": 
		scr_text("there are two player in this game, each player will choose a row to play with.")
		scr_text("on your turn choose one of the pockets to empty, get get all the stones from said pocket and put one in each pocket you come across")
		scr_text("if the last stone you put down in your turn ends in an empty pocket you capture all the stones from the pocket above or under this pocket and you put all the stones you captured in your mancala")
		scr_text("the mancala is the big pocket at each end of the board, the player with the lower row has the right mancala and the player with the upper row has the left mancala, your goal in this game is to put as many stones as you can in your mancala")
		scr_text("the game ends if one of the players empties their entire row, if the other player still has stones on their row they can put all of these in their mancala")
		scr_text("the player with the most stones in their mancala wins, have fun!")
		break;
		case "npc1 - no":
		scr_text("have fun!")
		break; 
		
		case "game over mancala": 
		scr_text("congratulations!!! you finished the game")
			scr_option("next game", "game over  mancala- next")
			scr_option("choose new level", "game over mancala - choose")
		break; 
		case "game over mancala - next":
		scr_text("on to the 4th century BC!")
		global.mancala_game_over = false; 
		room_goto(rm_go); 
		break; 
		case "game over mancala - choose":
		scr_text("on to the next game!")
		global.mancala_game_over = false; 
		room_goto(rm_start_screen); 
		break; 
	#endregion
	
	#region PATOLLI
		case "patolli": 
		scr_text("patolli is an acient game played by the aztecs, it is very reminisced of what we now know as Ludo or Mens erger je niet in dutch")
		scr_text("they used to gamble during this game by betting treasures and hold a space open for they're god of games")
		scr_text("would you like to know the rules")
			scr_option("yes, please tell me the rules", "patolli - yes")
			scr_option("no, let me play", "patolli - no")
		break; 
		case "patolli - yes":
		scr_text("you move as you usually do in a ludo game, use the dice to randomize your steps")
		scr_text("when you encounter a piece of a different player they have to move their piece back")
		scr_text("you start at where the arrows point into the board and when you reach the other arrow you move you piece to the plate with your color")
		scr_text("the game ends when you get all four of your pieces on your plate, the first person to get there wins")
		break;
		case "patolli - no":
		scr_text("have fun!")
		break;
		
	#endregion
	
	#region MEHEN
	case "mehen":
	scr_text("this is mehen an old egyptian game from 3600 BC, this game is familiar to a dutch game called ganzenborden but has a twist")
	scr_text("the aim of this game is to become enlightened, and it teaches you strategic thinking by making you move in both defensive and offensive ways")
	scr_text("would you like to see the rules?")
		scr_option("yes, please show me the rules", "mehen - yes")
		scr_option("no let me play", "mehen - no")
	break; 
	case "mehen - yes":
	scr_text("you can only put pawns on the board if you roll a one, you move your pawn from the tail of the snake to the head and then back to the tail")
	scr_text("to land on the head you need an exact roll, when your first pawn leaves the board you can put your lion into place")
	scr_text("the lion moves from the head of the snake down to the tail and back up to the head, during your turns you can devide your throw in between you pawns and lions")
	scr_text("for example if you roll a five and you have two pawns and a lion on the board you can move each pawn two places and the lion one")
	scr_text("when your lion falls on another players pawn this pawn is eaten and put out of the game entierly, if your lion falls on on other players lion both lion are taken of the board and you have to wait for the next pawn to reach the end of their journey")
	scr_text("the game ends when all pawns of a player have reached the tail after getting to the head and reached elightenedment, the person who captured the most pawns from other player with their lion wins")
	break; 
	case "mehen - no":
	scr_text("have fun!")
	break; 
	#endregion
		
	}
}