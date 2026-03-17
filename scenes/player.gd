extends Node

# Player character class
class_name PlayerCharacter

var speed = 200  # Speed of the player
var jump_force = 400  # Force applied when jumping

func _ready():
    pass  # Called when the node is added to the scene

func _process(delta):
    var direction = Vector2.ZERO
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    if Input.is_action_pressed("ui_down"):
        direction.y += 1
    if Input.is_action_pressed("ui_up"):
        direction.y -= 1

    direction = direction.normalized()  # Normalize to prevent faster diagonal movement
    position += direction * speed * delta

func jump():
    if is_on_floor():
        # Add jump logic here
        pass
