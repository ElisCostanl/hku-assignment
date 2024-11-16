var _s = id; 

if position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left)
{
	create_textbox(text_id); 
}

if global.mancala_game_over
{
	sprite_set_speed(spr_speakblock, 2, spritespeed_framespersecond) 
	text_id = "game over mancala"
}