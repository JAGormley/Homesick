///scWalking

//scrGetInput()
//var onGround = scrTileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom])

//if MoveDashAction && onGround && Velocity[AXES.x] != 0 {
//	state = scDashing
//	alarm[0] = room_speed/3
//} else if MoveCrouchAction && onGround {
//	state = scCrouchingDown
//}

// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * Acceleration;

// Horizontal movement
Velocity[AXES.x] = clamp(Velocity[AXES.x] + xInput, -MaxVelocity[1], MaxVelocity[1]);

// Friction
if xInput == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction);
}

scDirection(Velocity[AXES.x])

// Gravity
//Velocity[AXES.y] += Gravity;
