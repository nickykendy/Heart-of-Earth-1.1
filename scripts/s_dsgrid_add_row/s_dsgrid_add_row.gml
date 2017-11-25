/// @description s_dsgrid_add_row(gridIndex)
/// @param gridIndex
var _grid = argument0;
ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
return (ds_grid_height(_grid)-1);