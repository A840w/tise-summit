extends Node3D

@export var player: Player
@export var menu: Control
@export var menu_camera: Camera3D
@export var gameui: CanvasLayer
@export var fisheye: CanvasLayer


var esc_was_pressed: = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("ready")
	# player.hide()
	# player.accepting_pause = false
	# player.can_control_at_all = false
	# # player.queue_free()


func _on_menu_game_start() -> void :
	menu_camera.current = false
	menu.hide()


	player.initialize()
	player.show()
	player.accepting_pause = true

	gameui.show()
	fisheye.show()

func _on_new_game_button_pressed() -> void:
	get_tree().change_scene("res://game/levels/terrain.tscn")
