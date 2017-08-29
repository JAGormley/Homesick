/// scDashing

var xInput = (MoveRightAction - MoveLeftAction) * DashAcceleration
scHorizontalMovement(xInput * RunSpeed, RunSpeed, false)