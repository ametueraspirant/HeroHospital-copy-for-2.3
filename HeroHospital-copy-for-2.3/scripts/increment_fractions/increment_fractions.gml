/// How 2 Use
/// all inputs are structs.
/// _state must contain a hs and vs variable, corresponding to the entitiy's current horizontal and vertical speed.
/// _h_spd and _v_spd must contain the variable fract, to store fractional speeds until the next moment that the script is called.
/// Thanks to Zen00 and Sahaun for helping with this code
function increment_fractions(_state) {
	// Add fractions back
	_state.hs += _state.hsf;
	_state.vs += _state.vsf;
	
	// Store and remove fractions for the next frame, so we're always in an integer position
	// Int64s don't store fractions, so we're essentially flooring our numbers to remove the fraction, this also caps the value of our speed to 4.something quintrillion.
	_state.hsf = frac(_state.hs);
	_state.hs = int64(_state.hs);
	_state.vsf = frac(_state.vs);
	_state.vs = int64(_state.vs);
	
	// return _state into the external variables
	return _state;
}