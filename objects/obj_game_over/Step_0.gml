if (image_alpha < 1)
{
	image_alpha += .01; 
	image_alpha = clamp(image_alpha, 0, 1); 
}

if (image_alpha == 1) and (keyboard_check_pressed(vk_space)) and (room = rm_mancala)
{
	instance_destroy();
	instance_create_layer(36.5, 375, "text", obj_mancala_game_over); 
}
	
	if (image_alpha == 1) and (keyboard_check_pressed(vk_space)) and (room = rm_go)
	{
		instance_destroy(); 
	}