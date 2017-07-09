///@param tileMapId
///@param velocityArray

var tileMapId = argument0
var velocity = argument1

// Move horizontally
x += velocity[AXES.x]

// R and L collisions
if velocity[AXES.x] > 0 {
	velocity[AXES.x] = 0
	var tileRight = tileCollideAtPoints(
		tileMapId, 
		[bbox_right-1, bbox_top], 
		[bbox_right-1, bbox_bottom-1],
		[bbox_right-1, (bbox_bottom-bbox_top)/2 + bbox_top]
	)
	if tileRight {
		x = bbox_right & ~(TILE_SIZE - 1)
		x -= bbox_right - x;
		velocity[@ AXES.x] = 0
	}
} else {
	var tileLeft = tileCollideAtPoints(
		tileMapId, 
		[bbox_left, bbox_top], 
		[bbox_left, bbox_bottom-1],
		[bbox_left, (bbox_bottom-bbox_top)/2 + bbox_top]
	)
	if tileLeft {
		show_message("why")
		x = bbox_left & ~(TILE_SIZE - 1)
		x += TILE_SIZE + x - bbox_left;
		velocity[@ AXES.x] = 0
	}
}

// T and B collisions
y += velocity[AXES.y]
if velocity[AXES.y] > 0 {
	var tileBottom = tileCollideAtPoints(
		tileMapId, 
		[bbox_left, bbox_bottom-1], 
		[bbox_right-1, bbox_bottom-1]
	)
	if tileBottom {
		y = bbox_bottom & ~(TILE_SIZE - 1)
		y -= bbox_bottom - y
		velocity[@ AXES.y] = 0
	}
} else {
	var tileTop = tileCollideAtPoints(tileMapId, [bbox_left, bbox_top], [bbox_right-1, bbox_top])
	if tileTop {
		y = bbox_top & ~(TILE_SIZE - 1)
		y += TILE_SIZE + y - bbox_top;
		velocity[@ AXES.y] = 0
	}
}

//var onGround = tileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom])
//if onGround {
//	if keyboard_check_pressed(vk_space) {
//		Velocity[AXES.y] = -JumpSpeed
//	}
//} else {
//	if keyboard_check_released(vk_space) && Velocity[AXES.y] <= -(JumpSpeed/3) {
//		Velocity[AXES.y] = -(JumpSpeed/3)
//	}
//} 

//animationHandler(Velocity[AXES.x], onGround)


// CODE EDITOR
// no auto tab, brace completion, 
// command arrow doesnt go to end of line
// command arrow doesnt skip words
// option backspace doesnt delete word
// cmd k doesnt toggle comments, just keeps adding them

// IDE
// stop button doesnt work