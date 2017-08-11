var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
scHorizontalMovement(xInput, noone, true)

Velocity[AXES.y] = max(Velocity[AXES.y], 0)

if alarm_get(1) == 0
	scStateBrain(states.preFalling, true)