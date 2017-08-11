#macro TILE_SIZE 16
enum axes {
	x = 0,
	y = 1
}
#macro AXES axes

enum states {
	idle,
	walking,
	jumping,
	preFalling,
	falling,
	dashing,
	dashJumping,
	crouchingUp,
	crouchingDown,
	sliding
}

#macro STATES states


