// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration
scHorizontalMovement(xInput * DashSpeed, DashSpeed, false)
if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond) 