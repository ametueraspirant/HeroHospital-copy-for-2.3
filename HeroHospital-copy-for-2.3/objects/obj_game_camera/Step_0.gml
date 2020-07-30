/// @description Move camera

if camera_mode == g_camera_state.c_player
{	
	x=lerp(x, obj_player.x + obj_player.draw.look_dir * 100 + obj_player.state.hs * 20, 0.05);
	y=lerp(y, obj_player.y + obj_player.state.vs * 12, 0.05);
}
