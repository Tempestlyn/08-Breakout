extends Label
func _ready():
 update_lives()

func update_lives():
 text = "Pokeballs Left: " + str(get_parent().lives)