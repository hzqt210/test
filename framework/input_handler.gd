# InputHandler.gd

# This is an input handling class for GDScript
extends Node

# Signal emitted when an input action occurs
signal input_action(action)

# Called when the node enters the scene tree for the first time.
func _ready():
    Input.connect("input_action", self, "_on_input_action")

# Function to handle input actions
func _on_input_action(action):
    print("Input action: %s" % action)

# Function to process input
func _process(delta):
    if Input.is_action_just_pressed("ui_accept"):
        emit_signal("input_action", "ui_accept")

# You can add more input handling logic here.