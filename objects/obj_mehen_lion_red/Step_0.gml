if (dragged == false)
{
	exit;
}
else 
{
	x = mouse_x + xx;
	y = mouse_y + yy; 
}

if place_meeting(x,y,obj_mehen_lion_green) or place_meeting(x,y,obj_mehen_lion_blue)
{
	instance_destroy();
	instance_create_layer(243, 385, "game_pieces", obj_mehen_lion_red)
}