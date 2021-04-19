extends Node2D










func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://GameOver.tscn")


func _on_Passagem2_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://CenaFinal.tscn")
