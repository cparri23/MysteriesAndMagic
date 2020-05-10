evt_type = "Textbox" 
active = false
just_activated = false

image_speed = 0

win_w = room_width
win_h = room_height
im_w = sprite_width
im_h = sprite_height
x = (win_w - im_w) / 2
y = win_h - im_h
margin = 10

txt_cursor_x = win_w - margin - sprite_get_width(uiTextCursor) 
txt_cursor_y = win_h - margin - sprite_get_height(uiTextCursor)

// Create pointer
// Default values
text = ["This is interesting..."]
text_duration = FAST_TEXT_DURATION
text_name_type = "Single"
text_name = ""
text_name_array = []


bufferEnter = false
drawCursor = false
dispPage = 0
dispLetter = 0
durExhaused = 0

global.hardInteraction = true