extends KinematicBody2D

export (int) var speed = 400

var velocity = Vector2()
var new_ball = preload("res://Scenes/Ball.tscn")

func get_input():
    velocity = Vector2()
    if (Input.is_action_pressed("ui_right")):
        velocity.x += 1
    if (Input.is_action_pressed("ui_left")):
        velocity.x -= 1

    velocity = velocity.normalized() * speed

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)
	
func _input(event):
 if event is InputEventMouseButton and event.pressed:
  if not get_parent().has_node("Ball"):
   var ball = new_ball.instance()
   ball.position = position - Vector2(0, 32)
   ball.name = "Ball"
   ball.linear_velocity = Vector2(200, -200)
   get_parent().add_child(ball)