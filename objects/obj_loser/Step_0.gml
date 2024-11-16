if (image_alpha < 1)
{
	image_alpha += .01; 
	image_alpha = clamp(image_alpha, 0, 1); 
}

if (image_alpha == 1) and (keyboard_check_pressed(vk_space))
{
	image_alpha -= .01; 
	image_alpha = clamp(image_alpha, 0, 1);
	instance_destroy(); 
}