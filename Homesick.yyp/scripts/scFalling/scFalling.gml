var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
scHorizontalMovement(xInput, noone, true)

Velocity[AXES.y] = max(Velocity[AXES.y], 0)