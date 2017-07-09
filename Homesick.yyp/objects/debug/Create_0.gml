/// @description Movement variables
Velocity = [0, 0];
Gravity = 1.5;
JumpSpeed = 28;
max_Velocity = [8, 32];
acceleration_ = 2.1;

// Get the tilemap id
var layer_id = layer_get_id("coll2");
CollisionTileMapId = layer_tilemap_get_id(layer_id);
