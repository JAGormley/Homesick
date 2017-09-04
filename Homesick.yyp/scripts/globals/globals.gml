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
	sliding,
	running,
	runJumping
}


#macro STATES states

enum directions {
	up = 1,
	down = -1,
	left = 0,
	right = 2
}
#macro DIRS directions

enum collisionTileTypes {
	wall = 1,
	air = 2,
	destWall = 3,
	coil = 4,
	groundEdge = 5
}
#macro COLLISION_TILES collisionTileTypes



