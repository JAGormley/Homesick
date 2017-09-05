var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
var velMod = MoveRunHeldAction ? RunJumpHSpeed : JumpHSpeed
scHorizontalMovement(xInput, velMod, true)

var crestingVel = sign(Velocity[AXES.y]) == -1 ? Velocity[AXES.y] * .6 : Velocity[AXES.y]
Velocity[AXES.y] = crestingVel