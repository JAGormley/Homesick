/// scrAnimationHandler

///@param xVelocity
///@param onGround
///@param isDashing

var xVelocity = argument0
var onGround = argument1
var isDashing = argument2

if xVelocity > 0 {
	image_xscale = 1 
	if onGround handleGroundAnim(false, isDashing) else sprite_index = jumping
} else if xVelocity < 0 {
	image_xscale = -1
	if onGround handleGroundAnim(false, isDashing) else sprite_index = jumping
} else {
	if onGround handleGroundAnim(true, false) else sprite_index = jumping
}

//jumping L/R
//walking L/R
//standing



