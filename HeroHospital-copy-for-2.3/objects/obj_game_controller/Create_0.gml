/// @description Initialize Game

// set global variables for key binding
global.g_key_up = ord("W");
global.g_key_down = ord("S");
global.g_key_left = ord("A");
global.g_key_right = ord("D");
global.g_key_punch = ord("J");
global.g_key_kick = ord("K");
global.g_key_block = ord("L");
global.g_key_dash = vk_space;
global.g_key_menu = vk_escape;
global.g_key_debug = vk_f3;

// define main game layer for spawning
global.l_main_layer = "Instances";

// create the camera object
instance_create_layer(0, 0, global.l_main_layer, obj_game_camera);

#region // player enum states
enum where {
	ground,
	air,
	wall,
	ledge,
	water
}

enum ground {
	idle,
	walk,
	run,
	sprint,
	crouch,
	sneak,
	roll,
	slide,
	dash,
	land,
	hand,
	isnt
}

enum air {
	rise,
	fall,
	isnt
}

enum wall {
	run,
	slide,
	climb,
	jump,
	isnt
}

enum ledge {
	hang,
	climb,
	isnt
}

enum water {
	isnt
}
#endregion

#region // mob enum states

#endregion

#region //misc enum states
enum g_camera_state {
	c_player,
	c_action,
	c_cutscene
}
#endregion



// randomise
randomise();