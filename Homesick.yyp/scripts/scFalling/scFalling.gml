var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
scHorizontalMovement(xInput, noone, true)

show_debug_message(string(sign(Velocity[AXES.y])))

var crestingVel = sign(Velocity[AXES.y]) == -1 ? Velocity[AXES.y] * .6 : Velocity[AXES.y]

Velocity[AXES.y] = crestingVel