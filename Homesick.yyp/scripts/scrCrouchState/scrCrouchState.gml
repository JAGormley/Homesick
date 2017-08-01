if sprite_index != sprCrouchingDown {
	sprite_index = sprCrouchingDown
	image_index = 0
	sprite_set_speed(sprite_index, 20, spritespeed_framespersecond)
}
if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)
scrGetInput()

if !MoveCrouchAction state = scrCrouchUpState