// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration
scHorizontalMovement(xInput * RunSpeed, RunSpeed, false)
if image_index > 5 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond) 