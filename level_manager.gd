extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy_area=get_parent().get_node("all_enemies/path_enemy/Enemy/killer_area")
	enemy_area.connect("body_entered", self, "enemy_player_area_entered")
	
	var enemy_area1=get_parent().get_node("all_enemies/path_enemy2/Enemy/killer_area")
	enemy_area1.connect("body_entered", self, "enemy_player_area_entered")
	
	var enemy_area2=get_parent().get_node("all_enemies/path_enemy3/Enemy/killer_area")
	enemy_area2.connect("body_entered", self, "enemy_player_area_entered")
	
 
func enemy_player_area_entered(body):
	if(body.name=="Player"):
		get_tree().change_scene("res://Actors/GUI.tscn")
		
		
func _on_killer_area_body_entered(body):
	if(body.name == "Player"):
		get_tree().change_scene("res://Actors/GUI.tscn")

var score =0
func _on_Coin_body_entered(body):
	if(body.name == "Player"):
		 score = score + 1
		 print("new _score : ", score)


func _on_Coin2_body_entered(body):
	if(body.name == "Player"):
		 score = score + 1
		 print("new _score : ", score)
