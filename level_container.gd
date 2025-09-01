extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.start.connect(start)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func start() -> void:
	add_child(load("res://map.tscn").instantiate())
	get_parent().get_node("ui").hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
