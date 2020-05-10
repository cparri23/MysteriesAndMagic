//show_debug_message("Events remaining:" + string(ds_list_size(global.events)))
if(ds_list_size(global.events) > 0 && !global.eventInProgress) {
	//show_debug_message("Starting event.")
	//show_debug_message("Events left:" + string(ds_list_size(global.events)))
	global.events[|0].active = true
	global.events[|0].just_activated = true
	global.eventInProgress = true
	global.hardInteraction = true
	if(global.events[|0].evt_type == "Textbox") {
		global.evt_DrawTextBack = true	
	}
	if(global.hardInteraction) {
		with(oLuna) {
		stopMe = true	
		}	
	}
}