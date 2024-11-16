function scr_set_defaults_for_text() 
{
	line_break_pos[0, page_number] = 999; 
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0; 
}




/// @param _text
function scr_text(_text)
{
	
	scr_set_defaults_for_text();
	
	text[page_number] = _text; 
	page_number++;

}

/// @param _option
/// @param _link_id
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id; 
	
	option_number ++; 
}

/// @param _text_id
function create_textbox(_text_id)
{
		with(instance_create_layer(0, 0,"game_pieces", obj_textbox)) 
	{
		scr_game_text(_text_id); 
	}	
}

