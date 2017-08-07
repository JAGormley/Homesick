///@params onGround
var onGround = argument0

if onGround && Jump {
	// TRANSITION TO WALKING FROM DASHJUMPING
	Jump = false
	if state == scDashing state = scWalking
}

if onGround && MoveJumpAction {

	// ACTUAL JUMP MOVEMENT
	Velocity[AXES.y] = -JumpSpeed;
} else if !onGround {
	// TRANSITION TO FALLING?
	if !MoveJumpHeldAction && Velocity[AXES.y] <= 0 {
		Velocity[AXES.y] = max(Velocity[AXES.y], 0)
	}
	Jump = true
}


//if sprite_index != spCrouchingDown {
//	sprite_index = spCrouchingDown
//	image_index = 0
//	sprite_set_speed(sprite_index, 28, spritespeed_framespersecond)
//}


//// @TODO this is bad, get number from sprite itself
//if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)