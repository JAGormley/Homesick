// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
scHorizontalMovement(xInput, JumpHSpeed, true)
if image_index > 1 sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)

if sign(Velocity[AXES.y]) == 1  scStateBrain(states.jumping, true)