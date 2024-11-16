if (dragged == false)
{
	exit;
}
else 
{
	x = mouse_x + xx;
	y = mouse_y + yy; 
}

if (place_meeting(x,y, obj_patolli_pawn_green_in_play)) 
{
	instance_destroy(obj_patolli_pawn_green_in_play);
	instance_create_layer(random_range(646, 693), random_range(196, 254), "game_pieces", obj_patolli_pawn_green);
}

if (place_meeting(x,y, obj_patolli_pawn_purple_in_play)) 
{
	instance_destroy(obj_patolli_pawn_purple_in_play);
	instance_create_layer(random_range(479, 528), random_range(348, 417), "game_pieces", obj_patolli_pawn_purple);
}

if (place_meeting(x,y, obj_patolli_pawn_red_in_play)) 
{
	instance_destroy(obj_patolli_pawn_red_in_play);
	instance_create_layer(random_range(643, 693), random_range(524, 589), "game_pieces", obj_patolli_pawn_red);
}