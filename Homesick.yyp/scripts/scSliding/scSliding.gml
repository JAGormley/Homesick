var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration
scHorizontalMovement(xInput * DashSpeed, DashSpeed, false)

if alarm_get(0) == 0
	scStateBrain(states.dashing, true)