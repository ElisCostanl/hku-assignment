if (room = rm_mancala)
{
	draw_set_color(c_white);
	draw_set_font(fnt_menu);
	draw_text_transformed(1025,489, string("Score:") + string(global.score_player1), 2, 2, 0);
}

if (room = rm_mancala)
{
	draw_set_color(c_white);
	draw_set_font(fnt_menu);
	draw_text_transformed(218, 254, string("Score:") + string(global.score_player2), 2, 2, 0); 
}

