/// scrDashState

///scrMoveState

scrGetInput()
// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration;
var onGround = scrTileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);

// Horizontal movement
Velocity[AXES.x] = 
	clamp(Velocity[AXES.x] + xInput*2, -MaxVelocity[1] * DashSpeed, MaxVelocity[1] * DashSpeed);

// Friction
if xInput == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction);
}

// Gravity
Velocity[AXES.y] += Gravity;

// Move and contact tiles
scrPlayerControlAndCollide(CollisionTileMapId, TILE_SIZE, Velocity);

// Jumping/Dashing
scrHandleJump(onGround)

scrAnimationHandler(Velocity[AXES.x], onGround, true)