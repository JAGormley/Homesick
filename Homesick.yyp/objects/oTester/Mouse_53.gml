var collideMap = scrGetCollideMap()

var xPos = tilemap_get_cell_x_at_pixel(collideMap, mouse_x, mouse_y)
var yPos = tilemap_get_cell_y_at_pixel(collideMap, mouse_x, mouse_y)

var w = tilemap_get_tile_width(collideMap)
var h = tilemap_get_tile_height(collideMap)

var ex = w * xPos
var ey = h * yPos

var tiledata = tilemap_get(collideMap, xPos, yPos)
tiledata = tile_set_index(tiledata, 1)
tilemap_set(collideMap, tiledata, xPos, yPos)