var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration
scHorizontalMovement(xInput * DashSpeed, DashSpeed, false)
if image_index > 3 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond) 
if alarm_get(0) <= 0 && !scCheckCellAbove() {
	scStateBrain(states.sliding, true)
}
