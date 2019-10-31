extends StaticBody2D

var c = preload("res://Assets/PikPng.com_charizard-sprite-png_4458851.png")
var z = preload("res://Assets/PikPng.com_zorua-png_4801084.png")
var p = preload("res://Assets/PikPng.com_pidgey-png_2847576.png")
var e = preload("res://Assets/PikPng.com_evee-png_5672862.png")
var r = preload("res://Assets/PikPng.com_ralts-png_4518803.png")

onready var sprite = get_node("Sprite")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_parent().name == "Tiles":
		var num = randi()%6+1
		if num == 1:
			sprite.set_texture(c)
		elif num == 2:
			sprite.set_texture(z)
		elif num == 3:
			sprite.set_texture(p)
		elif num == 4:
			sprite.set_texture(e)
		else:
			sprite.set_texture(r)
			