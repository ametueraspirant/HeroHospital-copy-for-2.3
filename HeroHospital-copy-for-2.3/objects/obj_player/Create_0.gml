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

// variables to apply to the state with set_state();
// ground states
s_idle = {  };
s_walk = { a: .5, f: .3, g: .6, mhs: 4, mvs: 20 };
s_run = { a: 1, f: .6, g: .5, mhs: 10, mvs: 20 };
s_sprint = { a: 1.5, f: .9, g: .4, mhs: 16, mvs: 20 };
s_crouch = {  };
s_sneak = { a: .5, f: .4, g: .7, mhs: 3, mvs: 20 };
s_roll = {  };
s_slide = { a: 0, f: .3, g: .5, mhs: 15, mvs: 20 };
s_dash = {  };
s_land = {  };
s_hand = {  };

// air states
s_rise = { a: .5, f: .4, g: .5, mhs: 10, mvs: 20 };
s_fall = { a: .6, f: .4, g: .8, mhs: 10, mvs: 20 };

// wall states
s_wall = { a: 1, f: .6, g: .4, mhs: 10, mvs: 5 };
s_run = {  };
s_slide = {  };
s_climb = {  };
s_jump = {  };

// ledge states
s_ledge = { a: 0, f: 0, g: 0, mhs: 0, mvs: 0 };
s_swim = { a: .5, f: .2, g: .2, mhs: 5, mvs: 5 }; 

// math out these max speeds for friction * speed so it caps at about the same amount.
// max_h_spd = { walk: 5, run: 10, sprint: 15, crouch: 3 };
// max_v_spd = { air: 20, water: 10, wall: 5 };

// miscellaneous variables either not sorted yet or just here forever, I dunno...
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
	anim: spr_idle_stand_unready,
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