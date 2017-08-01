/// scrAnimationHandler

///@param xVelocity
///@param onGround
///@param isDashing

var xVelocity = argument0
var onGround = argument1
var isDashing = argument2

if xVelocity > 0 {
	image_xscale = 1 
	if onGround scrHandleGroundAnim(false, isDashing) else scrHandleJumpAnim()
} else if xVelocity < 0 {
	image_xscale = -1
	if onGround scrHandleGroundAnim(false, isDashing) else scrHandleJumpAnim()
} else {
	if onGround scrHandleGroundAnim(true, false) else scrHandleJumpAnim()
}

//jumping L/R
//walking L/R
//standing
