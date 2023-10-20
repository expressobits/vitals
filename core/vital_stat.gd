@icon("res://addons/vital-stats/icons/heart.svg")
class_name VitalStat
extends Node

signal emptied
signal is_full


var actual_value : int
@export var initial_value := 100
@export var min_value : int = 0
@export var max_value : int = 100


func is_vital_stat_empty() -> bool:
	return actual_value <= min_value


func is_vital_stat_full () -> bool:
	return actual_value >= max_value
