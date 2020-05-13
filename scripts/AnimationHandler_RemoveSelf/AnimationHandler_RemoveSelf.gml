var _self = id

with(AnimationHandler) {
	indexToRemove = ds_list_find_index(animateObjects, _self)
	ds_list_delete(animateObjects, indexToRemove)
	amountOfObjectsToDraw = ds_list_size(animateObjects)
}