function calc_knockback(argument0, argument1) {
	// F = ma;
	var damage = argument0; // F
	var weight = argument1; // m

	var knockback = damage/weight; // a

	return knockback;

}
