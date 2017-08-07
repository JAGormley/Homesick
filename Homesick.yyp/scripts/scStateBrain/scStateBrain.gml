///@params currentState -- globals.states
///@params stateEventTriggered -- boolean
var currentState = argument0
var stateEventTriggered = argument1

scrGetInput()
var onGround = scrTileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom])

switch currentState {

	case states.idle:
		if !onGround 
			scEnterState(states.falling)
		if MoveJumpAction 
			scEnterState(states.jumping)
		else if MoveCrouchAction
			scEnterState(states.crouchingDown)
		else if MoveRightAction || MoveLeftAction
			scEnterState(states.walking)
		break
	
	case states.walking:
		if !onGround
			scEnterState(states.falling)
		else if MoveDashAction {
			scEnterState(states.dashing)
		} else if MoveJumpAction {
			scEnterState(states.jumping)
		} else if !(MoveRightAction || MoveLeftAction) {
			scEnterState(states.idle)
		}
		break 
		
	case states.jumping:
		if onGround 
			scEnterState(states.idle)
		if !MoveJumpHeldAction && Velocity[AXES.y] > 0 {
			scEnterState(states.falling)
		}
		break
		
	case states.dashing:
		if !onGround
			scEnterState(states.falling)
		if stateEventTriggered
			scEnterState(states.idle)
		if MoveCrouchAction
			scEnterState(states.sliding)
		if MoveJumpAction
			scEnterState(states.dashJumping)
		break 	
		
	case states.dashJumping:
		if onGround
			scEnterState(states.idle)
		break
		
	case states.crouchingUp:
		if stateEventTriggered
			scEnterState(states.idle)
		if MoveCrouchAction scEnterState(states.crouchingDown)
		break
			
	case states.crouchingDown:
		if !MoveCrouchAction scEnterState(states.crouchingUp)
		break
			
	case states.sliding:
		if stateEventTriggered
			scEnterState(states.idle)
		break 
		
	case states.falling:
		if onGround
			scEnterState(states.idle)
		break

}

var script = ds_map_find_value(global.StatesToScripts, State)
script_execute(script)

Velocity[AXES.y] += Gravity
scrPlayerControlAndCollide(CollisionTileMapId, TILE_SIZE, Velocity)
scDirection(Velocity[AXES.x])