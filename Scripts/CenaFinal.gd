extends Node2D









func _on_MorteF_body_entered(body):
	get_tree().change_scene("res://GameOver.tscn")


func _on_Passagem2_body_entered(body):
	get_tree().change_scene("res://End.tscn")
