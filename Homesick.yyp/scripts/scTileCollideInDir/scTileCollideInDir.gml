///@description Helper for scrPlayerControlAndCollide || scPreFalling
///@param directionToCheck
///@param tileFilter
///@return [tileId, [coords]]
var directionToCheck = argument0
var tileFilter = argument1 // Array of collisionTileTypes you want to check against, checks all if noone supplied
var collideMap = CollisionTileMapId
var results = [] 
switch directionToCheck {
	case DIRS.up:
		results = scrTileCollideAtPoints(
			collideMap,
			tileFilter,
			[bbox_left, bbox_top], 
			[bbox_right-1, bbox_top]
		)
	break
	case DIRS.down:
		results = scrTileCollideAtPoints(
			collideMap, 
			tileFilter,
			[bbox_left, bbox_bottom-1], 
			[bbox_right-1, bbox_bottom-1]
		)
	break
	case DIRS.left:
		results = scrTileCollideAtPoints(
			collideMap, 
			tileFilter,
			[bbox_left, bbox_top], 
			[bbox_left, bbox_bottom-1],
			[bbox_left, (bbox_bottom-bbox_top)/2 + bbox_top]
		)
	break
	case DIRS.right:
		results = scrTileCollideAtPoints(
			collideMap,
			tileFilter,
			[bbox_right-1, bbox_top], 
			[bbox_right-1, bbox_bottom-1],
			[bbox_right-1, (bbox_bottom-bbox_top)/2 + bbox_top]
		)
	break
	
}
return results
