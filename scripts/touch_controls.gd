extends CanvasLayer

@onready var Up = $Up
@onready var Down = $Down
@onready var Left = $Left
@onready var Right = $Right

func _ready():
	Up.action = "up"
	Down.action = "down"
	Left.action = "left"
	Right.action = "right"

func _on_up_pressed() -> void:
	Up.modulate.a = 0.5

func _on_up_released() -> void:
	Up.modulate.a = 1.0

func _on_down_pressed() -> void:
	Down.modulate.a = 0.5

func _on_down_released() -> void:
	Down.modulate.a = 1.0

func _on_left_pressed() -> void:
	Left.modulate.a = 0.5

func _on_left_released() -> void:
	Left.modulate.a = 1.0

func _on_right_pressed() -> void:
	Right.modulate.a = 0.5

func _on_right_released() -> void:
	Right.modulate.a = 1.0
