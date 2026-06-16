extends Label

func _ready():
	var player = get_tree().get_first_node_in_group("player")
	player.death_signal.connect(update_text)

func update_text(reason: String):

	var timer = Timer.new()
	timer.wait_time = 1.0
	timer.one_shot = true
	add_child(timer)
	timer.timeout.connect(func(): 
		text = "player has died: %s" % reason
		visible = true
		)
	timer.start()
