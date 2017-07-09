///@param tileMapId
///@param tileSize
///@param Velocityarray
var tileMapId = argument0;
var tileSize = argument1;
var velocity = argument2;

// Move horizontally
x += velocity[AXES.x];

// Right collisions
if velocity[AXES.x] > 0 {
	var tileRight = tileCollideAtPoints(
		tileMapId,
		[bbox_right-1, bbox_top], 
		[bbox_right-1, bbox_bottom-1],
		[bbox_right-1, (bbox_bottom-bbox_top)/2 + bbox_top]
		);
	if tileRight {
		x = bbox_right & ~(tileSize-1);
		x -= bbox_right-x;
		velocity[@ AXES.x] = 0;
	}
} else {
	var tileLeft = tileCollideAtPoints(tileMapId, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if tileLeft {
		x = bbox_left & ~(tileSize-1);
		x += tileSize+x-bbox_left;
		velocity[@ AXES.x] = 0;
	}
}

// Move vertically
y += velocity[AXES.y];

// Vertical collisions
if velocity[AXES.y] > 0 {
	var tileBottom = tileCollideAtPoints(tileMapId, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_bottom-1]);
	if tileBottom {
		y = bbox_bottom & ~(tileSize-1);
		y -= bbox_bottom-y;
		velocity[@ AXES.y] = 0;
	}
} else {
	var tileTop = tileCollideAtPoints(tileMapId, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
	if tileTop {
		y = bbox_top & ~(tileSize-1);
		y += tileSize+y-bbox_top;
		velocity[@ AXES.y] = 0;
	}
}
