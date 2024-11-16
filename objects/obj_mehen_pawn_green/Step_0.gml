if (dragged == false)
{
	exit;
}
else 
{
	x = mouse_x + xx;
	y = mouse_y + yy; 
}

if place_meeting(x,y,obj_mehen_lion_blue) or place_meeting(x,y,obj_mehen_lion_red)
{
	instance_destroy();
	instance_create_layer(random_range(1026, 1109), random_range(382, 456), "game_pieces", obj_mehen_pawn_green);
}