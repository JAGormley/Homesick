///scrTileCollideAtPoints
///@param tileMapId
///@param point_arrays...
var tileMapId = argument[0]

var found = false

for (var i = 1; i < argument_count ; i++) {
	var point = argument[i]
	found = found || tilemap_get_at_pixel(tileMapId, point[AXES.x], point[AXES.y])
}

return found