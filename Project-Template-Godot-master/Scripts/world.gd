extends Node2D


export var score = 0
export var lives = 3
export var pokemonLeft = 9
func increase_score(s):
 score += int(s)
 find_node("Score").update_score()
 
func decrease_lives():
 lives -= 1
 find_node("Lives").update_lives()
 if lives <= 0:
  get_tree().change_scene("res://Scenes/Lose.tscn")

func dec_pokemon_left():
	pokemonLeft -= 1
	if pokemonLeft <= 0:
		get_tree().change_scene("res://Scenes/Win.tscn")
	