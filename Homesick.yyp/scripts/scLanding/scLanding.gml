///scWalking
// Get the input
var xInput = (MoveRightAction - MoveLeftAction) * Acceleration
var velMod = MoveRunHeldAction ? RunSpeed : 1
scHorizontalMovement(xInput, velMod, true)
