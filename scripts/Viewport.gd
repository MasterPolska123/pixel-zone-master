extends Viewport

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func save():
    var save_dict = {
        "filename" : get_filename(),
        "parent" : get_parent().get_path(),
		"pos_x" : get_camera().get_position_in_parent().x,
		"pos_y" : get_camera().y,
    }
    return save_dict
#	pass
