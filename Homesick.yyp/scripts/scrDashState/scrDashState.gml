/// scrDashState

///scrMoveState

scrGetInput()
// Get the input
var xInput = (move_right - move_left) * DashAcceleration;

// Horizontal movement
Velocity[AXES.x] = clamp(Velocity[AXES.x] + xInput*2, -MaxVelocity[1]*2.5, MaxVelocity[1]*2.5);

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

scrAnimationHandler(Velocity[AXES.x], onGround, true)