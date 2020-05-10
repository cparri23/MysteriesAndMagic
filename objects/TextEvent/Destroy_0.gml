ds_list_delete(global.events, 0)
global.eventInProgress = false
global.hardInteraction = false
if(ds_list_size(global.events) == 0 || global.events[|0].evt_type != "Textbox") {
	global.evt_DrawTextBack = false	
}
