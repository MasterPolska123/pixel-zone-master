extends Node

onready var Scores = Node.new()
onready var Auth = Node.new()
onready var Players = Node.new()

var config = {
	"api_key": "YZ7CY9acpN9NIZ9ebKXd43NO4FVCJFkR8rkF2cO4",
	"game_id": "PixelZone",
	"game_version": "0.9.1-beta1"
}

var scores_config = {
	"open_scene_on_close": "res://scenes/Main Menu/GUI.tscn"
}

var auth_config = {
	"redirect_to_scene": "res://addons/silent_wolf/Scores/Leaderboard.tscn",
	"session_duration": 3600
}

func _ready():
	Scores.set_script(preload("res://addons/silent_wolf/Scores/Scores.gd"))
	add_child(Scores)
	Auth.set_script(preload("res://addons/silent_wolf/Auth/Auth.gd"))
	add_child(Auth)
	Players.set_script(preload("res://addons/silent_wolf/Players/Players.gd"))
	add_child(Players)

func configure(json_config):
	config = json_config

func configure_api_key(api_key):
	config.apiKey = api_key

func configure_game_id(game_id):
	config.game_id = game_id

func configure_game_version(game_version):
	config.game_version = game_version

func configure_scores(json_scores_config):
	scores_config = json_scores_config

func configure_scores_open_scene_on_close(scene):
	scores_config.open_scene_on_close = scene
	
func configure_auth(json_auth_config):
	auth_config = json_auth_config

func configure_auth_redirect_to_scene(scene):
	auth_config.open_scene_on_close = scene
	
func configure_auth_session_duration(duration):
	auth_config.session_duration = duration
