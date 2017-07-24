///scrMoveState

scrGetInput()

if move_dash {
	state = scrDashState
	alarm[0] = room_speed/3
}

// Get the input
var xInput = (move_right - move_left) * Acceleration;

// Horizontal movement
Velocity[AXES.x] = clamp(Velocity[AXES.x] + xInput, -MaxVelocity[1], MaxVelocity[1]);

// Friction
if xInput == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction);
}

// Gravity
Velocity[AXES.y] += Gravity;

// Move and contact tiles
scrPlayerControlAndCollide(CollisionTileMapId, 32, Velocity);

// Jumping/Dashing
var onGround = scrTileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
if onGround {
	// Jumping
	if move_jump {
		Velocity[AXES.y] = -JumpSpeed;
	} else if (keyboard_check_pressed("J")) {
		
	}
} else {
	// Control jump height
	if move_jump && Velocity[AXES.y] <= -(JumpSpeed/3) {
		Velocity[AXES.y] = -(JumpSpeed/3);
	}
}

scrAnimationHandler(Velocity[AXES.x], onGround, false)