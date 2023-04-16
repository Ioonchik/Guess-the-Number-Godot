extends Node2D

var number = 0
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	restart()

func _process(delta):
	$ScoreLabel.text = "Score: " + str(score)

func _on_guess_button_pressed():
	if(int($LineEdit.text) == number):
		$AnswerLabel.text = "Correct"
		$Label.text = "I reriddled the number, guess it!"
		
		score += 1
		restart()
	elif(int($LineEdit.text) < number):
		$AnswerLabel.text = "Bigger"
	elif(int($LineEdit.text) > number):
		$AnswerLabel.text = "Smaller"


func restart():
	number = randi_range(1, 100)
