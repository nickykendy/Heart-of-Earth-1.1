/// @description create a grid
global.map = ds_grid_create(10, 10);
ds_grid_clear(global.map, BLOCK);
// 1 
ds_grid_set(global.map, 1, 1, 2);
ds_grid_set(global.map, 2, 1, 4);
ds_grid_set(global.map, 3, 1, 14);
ds_grid_set(global.map, 4, 1, 11);
ds_grid_set(global.map, 5, 1, 24);
ds_grid_set(global.map, 6, 1, 11);
ds_grid_set(global.map, 7, 1, 17);
ds_grid_set(global.map, 8, 1, 3);
// 2
ds_grid_set(global.map, 3, 2, 10);
ds_grid_set(global.map, 4, 2, 14);
ds_grid_set(global.map, 5, 2, 20);
ds_grid_set(global.map, 6, 2, 17);
ds_grid_set(global.map, 7, 2, 13);
// 3
ds_grid_set(global.map, 2, 3, 10);
ds_grid_set(global.map, 3, 3, 13);
ds_grid_set(global.map, 5, 3, 2);
ds_grid_set(global.map, 6, 3, 16);
ds_grid_set(global.map, 7, 3, 4);
ds_grid_set(global.map, 8, 3, 15);
// 4
ds_grid_set(global.map, 1, 4, 2);
ds_grid_set(global.map, 2, 4, 16);
ds_grid_set(global.map, 3, 4, 4);
ds_grid_set(global.map, 4, 4, 15);
ds_grid_set(global.map, 7, 4, 10);
ds_grid_set(global.map, 8, 4, 13);
// 5
ds_grid_set(global.map, 4, 5, 12);
ds_grid_set(global.map, 5, 5, 17);
ds_grid_set(global.map, 6, 5, 4);
ds_grid_set(global.map, 7, 5, 13);
// 6
ds_grid_set(global.map, 2, 6, 2);
ds_grid_set(global.map, 3, 6, 14);
ds_grid_set(global.map, 4, 6, 21);
ds_grid_set(global.map, 5, 6, 16);
ds_grid_set(global.map, 6, 6, 14);
ds_grid_set(global.map, 7, 6, 11);
ds_grid_set(global.map, 8, 6, 15);
// 7
ds_grid_set(global.map, 1, 7, 2);
ds_grid_set(global.map, 2, 7, 4);
ds_grid_set(global.map, 3, 7, 14);
ds_grid_set(global.map, 4, 7, 30);
ds_grid_set(global.map, 5, 7, 3);
ds_grid_set(global.map, 7, 7, 10);
ds_grid_set(global.map, 8, 7, 13);
// 8
ds_grid_set(global.map, 2, 8, 2);
ds_grid_set(global.map, 3, 8, 4);
ds_grid_set(global.map, 4, 8, 13);
ds_grid_set(global.map, 6, 8, 2);
ds_grid_set(global.map, 7, 8, 13);

// draw tile
var floor_layer_id = layer_create(399);
var floor_tile_id = layer_tilemap_create(floor_layer_id, 0, 0, t_map, room_width, room_height);
for (var i = 0; i < 10; i++) {
	for (var j = 0; j < 10; j++) {
		tilemap_set_at_pixel(floor_tile_id, global.map[# i, j], i*ROOM_SIZE, j*ROOM_SIZE);
	}
}