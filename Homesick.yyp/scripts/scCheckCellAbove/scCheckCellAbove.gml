///@description get tile above head

return scrTileCollideAtPoints(
	scrGetCollideMap(),
	noone,
	[(bbox_right-bbox_left/2) + bbox_left, bbox_top - TILE_SIZE]
)