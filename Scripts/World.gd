extends Node


func _ready():
	pass # Replace with function body.



func _on_Passagem_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cena2.tscn")


func _on_morte_body_entered(body):
	get_tree().change_scene("res://GameOver.tscn")
