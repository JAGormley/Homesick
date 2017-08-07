scrGetInput()

// ENTER STATE
if sprite_index != spCrouchingUp {
	sprite_index = spCrouchingUp
	image_index = 0
}


// TRANSITION TO WALKING
if image_index > 5 state = scWalking

