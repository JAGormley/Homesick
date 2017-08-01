///@params onGround
var onGround = argument0

if onGround && Jump {
	Jump = false
	if state == scrDashState state = scrMoveState
}

if onGround && MoveJumpAction {
	Velocity[AXES.y] = -JumpSpeed;
} else if !onGround {
	// Control jump height
	if !MoveJumpHeldAction && Velocity[AXES.y] <= 0 {
		Velocity[AXES.y] = max(Velocity[AXES.y], 0)
	}
	Jump = true
}