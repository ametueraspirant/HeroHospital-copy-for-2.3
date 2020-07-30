/// useage:
/// alarm_var = set_alarm(duration_in_game_ticks);
/// if(!alarm_var)logic;
function set_alarm(time) {
	for(var tim = 0; tim < alarm.length; tim++) {
		if(alarm[tim] == -1) {
			alarm[tim] = time;
			return alarm[tim];
		};
	};
};