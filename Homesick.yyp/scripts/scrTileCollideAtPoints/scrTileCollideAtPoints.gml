///@description returns [tileIndex: found, [2]: cellCoords]
///@param tileMapId
///@param tileFilter
///@param point_arrays...
var tileMapId = argument[0]
var tileFilter = argument[1] // Array of collisionTileTypes you want to check against, checks all if noone supplied

tileFilter = tileFilter == noone 
	? [collisionTileTypes.wall, collisionTileTypes.air, collisionTileTypes.destWall, collisionTileTypes.coil]
	: tileFilter

var found = false
var cellCoords = [-1, -1]

for (var i = 2; i < argument_count ; i++) {
	var point = argument[i]
	found = tile_get_index(tilemap_get_at_pixel(tileMapId, point[AXES.x], point[AXES.y]))
	if found {
		cellCoords = [
			tilemap_get_cell_x_at_pixel(tileMapId, point[AXES.x], point[AXES.y]),
			tilemap_get_cell_y_at_pixel(tileMapId, point[AXES.x], point[AXES.y])
		]
		break
	}
	
}

return found

