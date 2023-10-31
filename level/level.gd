extends Node

var player_score := 0
var opponent_score := 0

@onready var player_score_label: Label = %PlayerScore
@onready var opponent_score_label: Label = %OpponentScore
@onready var ball: Ball = %Ball
@onready var countdown_timer: Timer = %CountdownTimer
@onready var countdown_label: Label = %CountdownLabel
@onready var score_sound: AudioStreamPlayer = %ScoreSound
@onready var player_name: Label = %PlayerName

func _ready() -> void:
	player_name.text = GameManager.player1_name
	

func _process(_delta: float) -> void:
	countdown_label.text = str(ceil(countdown_timer.time_left))

func _on_wall_left_body_entered(_body: Node2D) -> void:
	# Centers the body (ball) on the screen
	ball.position = get_viewport().size / 2
	ball.stop_moving()
	countdown_timer.start()
	countdown_label.visible = true
	
	# Updates Score
	opponent_score += 1
	opponent_score_label.text = str(opponent_score)
	if opponent_score  == 5:
		get_tree().quit()
	score_sound.play()

func _on_wall_right_body_entered(_body: Node2D) -> void:
	# Centers the body (ball) on the screen
	ball.position = get_viewport().size / 2
	ball.stop_moving()
	countdown_timer.start()
	countdown_label.visible = true
	
	# Updates Score
	player_score += 1
	player_score_label.text = str(player_score)
	if player_score == 5:
		get_tree().quit()
	score_sound.play()

func _on_countdown_timer_timeout() -> void:
	ball.start_moving()
	countdown_label.visible = false
