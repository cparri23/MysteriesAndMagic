/// @desc CreateDialogueBox()
/// @param Text

textBox = instance_create_layer(0, 0, "Instances", TextEvent)

var _textData = []
var _textData_text = argument0

textBox.textData[textVariables.text] = _textData_text

if(ds_queue_size(global.textQueue) == 0) {
	global.playerInEvent = true			
}

textBox.parentID = id
textBox.myEventType = eventType.text
textBox.waitForMe = true
textBox.makePlayerInEvent = true

with(textBox) {
	ds_queue_enqueue(global.eventQueue, id)
	//show_debug_message("Current number of text events: " + string(ds_queue_size(global.textQueue)))
}

return textBox