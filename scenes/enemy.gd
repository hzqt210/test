extends CharacterBody2D

# Declare member variables here. Examples:
var speed = 400
var jump_force = 400
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass

# Called when the node enters the scene for the first time.
func _ready():
    pass

# Function to move the enemy character
func move_enemy(delta):
    var velocity = Vector2.ZERO
    velocity.x += speed * delta
    velocity.y += gravity * delta
    move_and_slide(velocity)