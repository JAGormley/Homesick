///@description get tile above head

return scrTileCollideAtPoints(
	CollisionTileMapId,
	noone,
	[(bbox_right-bbox_left)/2 + bbox_left, bbox_top - TILE_SIZE/2]
)