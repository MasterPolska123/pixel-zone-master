extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
# Called when the node enters the scene tree for the first time.
var player_default = globals.selected_player
func _ready():
	globals.run_rpc("Castlemania 03")
	add_child(Object(player_default))
	globals._set_player_pos(0,0)
	player_default.restart_position()
	globals.on_scene_changed()




func _on_Spikes3x1_body_entered(body):
	if body.name == 'Player':
		remove_child(player_default)
		scene = get_tree().change_scene("res://scenes/GameOver.tscn")


func _on_Spikes1x11_body_entered(body):
	if body.name == 'Player':
		remove_child(player_default)
		scene = get_tree().change_scene("res://scenes/GameOver.tscn")


func _on_Area2D_body_entered(body):
	if body.name == 'Player':
		remove_child(player_default)
		scene = get_tree().change_scene("res://scenes/GameOver.tscn")


func _on_Area2D2_body_entered(body):
	if body.name == 'Player':
		remove_child(player_default)
		game_state._update_data()
		scene = get_tree().change_scene("res://animations/cutscenes/cutscene7.tscn")

func _process(_delta):
	var unlock = File.new()
	unlock.open('user://sav.s17', File.WRITE)
	unlock.close()
	set_process(false)
