var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
var velMod = MoveRunHeldAction ? RunJumpHSpeed : JumpHSpeed
scHorizontalMovement(xInput, velMod, true)

Velocity[AXES.y] = max(Velocity[AXES.y], 0)

if alarm_get(1) == 0
	scStateBrain(states.preFalling, true)