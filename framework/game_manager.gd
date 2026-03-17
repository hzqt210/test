# GameManager.gd

extends Node2D

# Core game manager class
class_name GameManager

var score = 0
var level = 1

func _ready():
    pass  # Called when the node enters the scene tree for the first time.

func start_game():
    score = 0
    level = 1
    # Initialize game settings

func end_game():
    # Handle game over logic
    pass

func increase_score(points: int):
    score += points

func advance_level():
    level += 1
    # Handle level advancement logic
