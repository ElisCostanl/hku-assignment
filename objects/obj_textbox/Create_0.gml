depth = -9999; 

//textbox parameters
textbox_width = 368;
textbox_height = 127;
border = 8; 
line_sep = 16;
line_width = textbox_width - border*2; 
txtb_spr = spr_textbox
txtb_img = 0;
txtb_img_spd = 0/60; 

//text 
page = 0; 
page_number = 0; 
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = ""; 
draw_char = 0; 
text_spd = 1; 

//options
option[0] = "";
option_link_id[0] = -1; 
option_pos = 0;
option_number = 0; 

setup = false; 