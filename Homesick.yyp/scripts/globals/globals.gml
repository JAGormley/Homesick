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
	dashing,
	dashJumping,
	crouchingUp,
	crouchingDown,
	sliding
}

enum statesToAnimationSpeeds {
	idle = 0,
	walking = 12,
	jumping = 12,
	dashing = 10,
	dashJumping = 12,
	crouchingDown = 28,
	crouchingUp = 35,
	sliding = 10
}
#macro STATES states


