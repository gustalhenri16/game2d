extends KinematicBody2D

export(int,1,20) var life = 1
var vivo = true 
var flip = true
var posicao_inicial
var posicao_final
var velocidade = 0.3

func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	
	$AnimatedSprite.play("walk")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 100
	
func _process(delta):
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade
		$AnimatedSprite.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false
			
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$AnimatedSprite.flip_h = true
		if($".".position.x <= posicao_inicial):
			flip = true
			
func dano(qtde):
	get_node("animHit").play("danoCh")
	if !vivo:
		return
	life -= qtde
	if life  <= 0:
		vivo = false
		get_node("CollisionShape2D").queue_free()
		get_node("anim").play("dead")
		yield(get_node("anim") , "animation_finished")
		queue_free()



