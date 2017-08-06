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
	crouching,
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

var statesToSprites = ds_map_create()
ds_map_add(statesToSprites, statesToAnimationSpeeds.idle, dashing)

//statesToSprites {
//	idle = spIdle,
//	walking = spWalking,
//	jumping = spJumping,
//	dashing = spDashing,
//	dashJumping = spJumping,
//	crouchingDown = spCrouchingDown,
//	crouchingUp = spCrouchingUp,
//	sliding = spSliding
//}


#macro STATES states
#macro STATES_TO_SPRITES statesToSprites