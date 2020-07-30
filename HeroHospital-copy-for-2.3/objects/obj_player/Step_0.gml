/// @description Move the player

#region // Input checks
key_jump = keyboard_check(g2l_jump);
key_jump_tap = keyboard_check_pressed(g2l_jump);
key_duck = keyboard_check(g2l_duck);
key_duck_tap = keyboard_check_pressed(g2l_duck);
key_left = keyboard_check(g2l_left);
key_left_tap = keyboard_check_pressed(g2l_left);
key_right = keyboard_check(g2l_right);
key_right_tap = keyboard_check_pressed(g2l_right);
key_punch = keyboard_check(g2l_punch);
key_punch_tap = keyboard_check_pressed(g2l_punch);
key_kick = keyboard_check(g2l_kick);
key_kick_tap = keyboard_check_pressed(g2l_kick);
key_block = keyboard_check(g2l_block);
key_block_tap = keyboard_check_pressed(g2l_block);
key_dash = keyboard_check(g2l_dash);
key_dash_tap = keyboard_check_pressed(g2l_dash);
key_menu = keyboard_check(g2l_menu);
key_debug = keyboard_check(g2l_debug);
#endregion

#region // Miscellaneous variable checks
// if the player is moving, change direction to check collisions
if(state.hs > 0)misc.run_dir = 1;
else if(state.hs < 0)misc.run_dir = -1;
// on player input, flip character.
if(state.a != 0) {
	if(key_right and !key_left)draw.look_dir = 1;
	if(key_left and !key_right)draw.look_dir = -1;
}

// if the player presses a button, set a 10 frame buffer
if(key_jump_tap and t.jump < t.set)t.jump = t.set;
if(key_duck_tap and t.duck < t.set)t.jump = t.set;
if(key_left_tap and t.left < t.set)t.left = t.set;
if(key_right_tap and t.right < t.set)t.right = t.set;
if(key_punch_tap and t.punch < t.set)t.punch = t.set;
if(key_kick_tap and t.kick < t.set)t.kick = t.set;
if(key_block_tap and t.block < t.set)t.block = t.set;
if(key_dash_tap and t.dash < t.set)t.dash = t.set;

// decrement the buffers by one per frame
if(t.jump > 0)t.jump--;
if(t.duck > 0)t.duck--;
if(t.left > 0)t.left--;
if(t.right > 0)t.right--;
if(t.punch > 0)t.punch--;
if(t.kick > 0)t.kick--;
if(t.block > 0)t.block--;
if(t.dash > 0)t.dash--;

// even more miscellaneous-er checks
if(keyboard_check(vk_anykey))misc.moved = true;
if(key_debug)draw.debug = !draw.debug;
if(key_menu)draw.menu = !draw.menu;
#endregion

#region // Movement checks
//split speeds into incremental numbers and save the fractions
state = increment_fractions(state);


#endregion

#region // Collision checks


#endregion

#region // Movement state machine


#endregion
