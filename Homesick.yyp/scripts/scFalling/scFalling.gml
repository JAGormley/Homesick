var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
var velMod = MoveRunHeldAction ? RunJumpHSpeed : JumpHSpeed
scHorizontalMovement(xInput, velMod, true)
if image_index > 2 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)

var crestingVel = sign(Velocity[AXES.y]) == -1 ? Velocity[AXES.y] * .6 : Velocity[AXES.y]
Velocity[AXES.y] = crestingVel