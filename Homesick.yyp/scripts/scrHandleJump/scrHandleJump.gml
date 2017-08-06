///@params onGround
var onGround = argument0

if onGround && Jump {
	Jump = false
	if state == scrDashState state = scrMoveState
}

if onGround && MoveJumpAction {
	Velocity[AXES.y] = -JumpSpeed;
} else if !onGround {
	// Control jump height
	if !MoveJumpHeldAction && Velocity[AXES.y] <= 0 {
		Velocity[AXES.y] = max(Velocity[AXES.y], 0)
	}
	Jump = true
}


//if sprite_index != sprCrouchingDown {
//	sprite_index = sprCrouchingDown
//	image_index = 0
//	sprite_set_speed(sprite_index, 28, spritespeed_framespersecond)
//}


//// @TODO this is bad, get number from sprite itself
//if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)