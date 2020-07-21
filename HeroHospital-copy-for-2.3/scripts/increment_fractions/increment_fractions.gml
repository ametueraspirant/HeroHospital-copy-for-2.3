/* How 2 Use
/// In Create Event
spd = new speed_info(5, 5);

/// In Step Event
spd.update();
x += spd.x_speed;
y += spd.y_speed;

/// Thanks to Zen00 and Sahaun for helping with this code
*/

function speed_info() constructor {
	x_speed = 0;
	y_speed = 0;
	x_frac = 0;
	y_frac = 0;
	x_save = 0;
	y_save = 0;
	
	static fracture = function() {
		//Add fractions back
		x_speed += x_frac;
		y_speed += y_frac;
		
		//Store and remove fractions for the next frame, so we're always in an integer position
		//Int64s don't store fractions, so we're essentially flooring our numbers to remove the fraction, this also caps the value of our speed to 4.something quintrillion.
		x_frac = frac(x_speed);
		x_speed = int64(x_speed);
		y_frac = frac(y_speed);
		y_speed = int64(y_speed);
	}
}