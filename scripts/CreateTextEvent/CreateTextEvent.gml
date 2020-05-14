/// @desc CreateDialogueBox()
/// @param Text
/// @param specialOption1
/// @param specialData1

textBox = instance_create_layer(0, 0, "Instances", TextEvent)

var _textData = []
var _textData_text = argument0
//_textData[textVariables.text] = argument0
textBox.textData[textVariables.text] = _textData_text
//Process special cases here
//for (i = 1; i < argument_count; i++) {
//	_textData[argument[i]] = argument[i + 1]
	
//}

if(ds_queue_size(global.textQueue) == 0) {
	show_debug_message("setting player to in event")
	global.playerInEvent = true			
}

//textbox.textData = _textData
textBox.parentID = id
textBox.myEventType = eventType.text
textBox.waitForMe = true
textBox.makePlayerInEvent = true

with(textBox) {
	ds_queue_enqueue(global.eventQueue, id)
	//show_debug_message("Current number of text events: " + string(ds_queue_size(global.textQueue)))
}

return textBox