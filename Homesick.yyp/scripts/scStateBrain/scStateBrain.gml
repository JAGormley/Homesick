///@params currentState -- globals.states
///@params stateEventTriggered -- boolean
var currentState = argument0
var stateEventTriggered = argument1

scrGetInput()
var onGround = scrTileCollideAtPoints(CollisionTileMapId, noone, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]) == 1

//@TODO: dont need the run states (or any states w dup sprites just diff speed. See scFalling)
// actually that ^ might not work, in any case, refactor these states to avoid having so many

switch currentState {

	case states.idle:
		if !onGround 
			scEnterState(states.preFalling)
		if MoveJumpAction 
			scEnterState(states.jumping)
		else if MoveRightAction || MoveLeftAction
			scEnterState(states.walking)
		else if MoveCrouchAction
			scEnterState(states.crouchingDown)
		break
	
	case states.walking:
		if !onGround
			scEnterState(states.preFalling)
		else if MoveDashAction {
			scEnterState(states.dashing)
		} else if MoveRunAction || MoveRunHeldAction {
			scEnterState(states.running)
		} else if MoveJumpAction {
			scEnterState(states.jumping)
		} else if !(MoveRightAction || MoveLeftAction) {
			scEnterState(states.idle)
		}
		break 
	
	case states.running:
		if !onGround
			scEnterState(states.preFalling)
		else if !MoveRunHeldAction {
			scEnterState(states.idle)
		} else if MoveJumpAction {
			scEnterState(states.runJumping)
		} else if !(MoveRightAction || MoveLeftAction) {
			scEnterState(states.idle)
		}
		if MoveSlideAction
			scEnterState(states.sliding)
		break
		
	case states.jumping:
		if onGround
			scEnterState(states.landing)
		if !MoveJumpHeldAction
			scEnterState(states.falling)
		if stateEventTriggered
			scEnterState(states.falling)
		//if MoveRunHeldAction
		//	scEnterState(states.runJumping)
		break
		
	case states.dashing:
		if !onGround
			scEnterState(states.preFalling)
		if stateEventTriggered
			scEnterState(states.idle)
		if MoveSlideAction
			scEnterState(states.sliding)
		if MoveJumpAction
			scEnterState(states.dashJumping)
		break 	
		
	case states.runJumping:
		if onGround
			scEnterState(states.landing)
		if !MoveJumpHeldAction
			scEnterState(states.falling)
		if stateEventTriggered
			scEnterState(states.falling)
		
		//if !MoveRunHeldAction
		//	scEnterState(states.jumping)
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
		
	case states.preFalling:
		if MoveJumpAction {
			if MoveRunHeldAction scEnterState(states.runJumping)
			else scEnterState(states.jumping)		
		}
		if stateEventTriggered
			scEnterState(states.falling)
		break
		
	case states.falling:
		if onGround
			scEnterState(states.landing)
		break
		
	case states.landing:
		if stateEventTriggered 
			scEnterState(states.idle)
		else if MoveJumpAction && MoveRunHeldAction
			scEnterState(states.runJumping)
		else if MoveJumpAction
			scEnterState(states.jumping)
		if MoveSlideAction
			scEnterState(states.sliding)
		break

}

var script = ds_map_find_value(global.StatesToScripts, State)
script_execute(script)

if Velocity[AXES.y] + Gravity < MaxVelocity[AXES.y] {
	Velocity[AXES.y] += Gravity
}
	
scrPlayerControlAndCollide(CollisionTileMapId, TILE_SIZE, Velocity)