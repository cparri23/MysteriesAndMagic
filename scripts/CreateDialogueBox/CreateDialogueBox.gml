/// @desc CreateDialogueBox()
/// @param Text
/// @param Text_duration_type
/// @param Text_duration
/// @param Text_name_type
/// @param Text_name
/// @param Text_name_array
/// @param stringargs

textbox = instance_create_layer(0, 0, "Instances", ouiDialogueBox)
textbox.text = argument0
textbox.text_duration_type = argument1
textbox.text_duration = argument2
textbox.text_name_type = argument3
textbox.text_name = argument4
textbox.text_name_array = argument5

textbox.active = false

if(argument3 == "Conversation" ) {
	text_name_num = argument5[0]
	textbox.drawName = argument4[text_name_num]
}

ds_list_add(global.events, textbox)