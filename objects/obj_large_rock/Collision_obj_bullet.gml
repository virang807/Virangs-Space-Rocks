/// @description Insert description here
// You can write your code in this editor
obj_game.points += 50;

instance_destroy(other);

effect_create_above(ef_explosion, x, y, 1, c_white);
direction = random(360);

if (sprite_index == spr_rock_big){
	sprite_index = spr_rock_small;
	instance_copy(true); // Test Github
}
else if(instance_number(obj_large_rock) < 12){
	sprite_index = spr_rock_big;
	x = -100;
}
else{
	obj_game.points += 10;
	instance_destroy();
}

