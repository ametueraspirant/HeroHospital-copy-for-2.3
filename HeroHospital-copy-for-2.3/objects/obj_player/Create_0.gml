/// @description Initialize the player

// convert global variables to local variables
g2l_jump = global.g_key_up;
g2l_duck = global.g_key_down;
g2l_left = global.g_key_left;
g2l_right = global.g_key_right;
g2l_punch = global.g_key_punch;
g2l_kick = global.g_key_kick;
g2l_block = global.g_key_block;
g2l_dash = global.g_key_dash;
g2l_menu = global.g_key_menu;
g2l_debug = global.g_key_debug;

// define stats
ground = {};
air = {};
wall = {};
ledge = {};
swim = {};

max_h_spd = { walk: 5, run: 10, sprint: 15, crouch: 3 };
max_v_spd = { air: 20, water: 10, wall: 5 };
accel = { ground: 1, air: .5, crouch: .8 };
frict = { ground: .6, air: .4, crouch: .3 };
grav = { reset: .5, fall: .8, wall: .4 };
misc = { stam: 200, jump_pow: 15, ledge_id: noone, moved: false, run_dir: 1 };
draw = { menu: false, debug: false, look_dir: 1, angle: 0, y_offset: 0 };

// holds all transient variables for the character
state = {
	//stats
	mhs: max_h_spd.walk,
	mvs: max_v_spd.air,
	hs: 0, hsf: 0, hss: 0,
	vs: 0, vsf: 0, vss: 0,
	a: accel.ground,
	f: frict.ground,
	g: grav.reset,
	stam: misc.stam,
	//states
	won: p_on_where.on_air,
	lon: p_on_where.on_air,
	isg: p_is_ground.is_not,
	isa: p_is_air.is_not,
	isw: p_is_wall.is_not,
	isl: p_is_ledge.is_not,
	iss: p_is_swim.is_not
};

// define current timers
t = {
	fall: 0,
	coyote: 0,
	jump: 0,
	duck: 0,
	left: 0,
	right: 0,
	dash: 0,
	punch: 0,
	kick: 0,
	block: 0,
	set: 10
};