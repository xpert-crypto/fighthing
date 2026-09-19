extends Node2D

func _ready():
	print("Main loaded - APK fixed")

	# Проверка ресурсов - чтобы не было серого экрана
	if not FileAccess.file_exists("res://Characters/Falko/Sprites/idle.png"):
		$Label.text = "ERROR: idle.png missing! Check Characters/Falko/Sprites/"
		push_error("idle.png not found")
		return

	if not FileAccess.file_exists("res://Stages/Rostov/Rostov.png"):
		$Label.text = "ERROR: Rostov.png missing! Add Stages/Rostov/"
		push_error("Rostov.png not found")
		return

	$Label.text = "FALKO APK FIXED - OK"
