
//// ENTER STATE
//if sprite_index != spCrouchingDown {
//	sprite_index = spCrouchingDown
//	image_index = 0
//	sprite_set_speed(sprite_index, 28, spritespeed_framespersecond)
//}

//// FREEZE ON CROUCH
//if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)
//scrGetInput()

//// TRANSITION TO CROUCH UP
//if !MoveCrouchAction state = scCrouchingUp

if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)