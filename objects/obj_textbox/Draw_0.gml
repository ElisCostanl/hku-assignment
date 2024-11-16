accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 180;

//setup 
if (setup = false)
{
	setup = true; 
	draw_set_font(fnt_menu);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var _p = 0; _p < page_number; _p++)
	{
		 //find characters
		 text_length[_p] = string_length(text[_p]); 
		 
		 //x postions textbox
			//no character, cetering textbox
			text_x_offset[_p] = 512;
	}
}


//typing the text
if draw_char < text_length[page]
{
	draw_char += text_spd; 
	draw_char = clamp(draw_char, 0, text_length[page]); 
}

//flip through pages
if accept_key
{
	
	//if typing is done
	if draw_char = text_length[page]
	{
		//next page
		if page < page_number -1 
		{
			page++;
			draw_char = 0; 
		}
		//destory textbox
		else 
		{
			//link text for options
			if option_number > 0
			{
				create_textbox(option_link_id[option_pos])
			}
			
			instance_destroy(); 
		}
	}
	//if not done typing 
	else 
	{
		draw_char = text_length[page]; 
	}
}


//draw the text box 
text_x_offset[page] = 512; 
var _txtb_x = textbox_x + text_x_offset[page]; 
var _txtb_y = textbox_y; 
txtb_img += txtb_img_spd; 
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

//back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1); 

//options
if draw_char == text_length[page] and page == page_number -1
{
	
	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up); 
	option_pos = clamp(option_pos, 0, option_number -1);
	
	//draw options
	var _op_space = 15; 
	var _op_bord = 4;
	for(var _op = 0; _op < option_number; _op++;)
	{
		//option box
		var _o_w = string_width(option[_op]) + _op_bord * 2;
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_space * option_number + _op_space * _op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1)
		
		//the arrow
		if option_pos == _op
		{
			draw_sprite(spr_arrow, 0, _txtb_x, _txtb_y - _op_space * option_number + _op_space * _op); 
			
		}
		
		//option text
		draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space * option_number + _op_space * _op, option[_op]);
	}
}

//draw text
var _drawtext = string_copy(text[page], 1, draw_char)
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawtext, line_sep, line_width);