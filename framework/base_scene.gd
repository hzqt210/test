# framework/base_scene.gd
extends Node

# Base scene class that can be inherited by other scenes
class_name BaseScene

# Called when the node enters the scene tree for the first time.
func _ready():
    print("BaseScene ready!")