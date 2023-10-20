class_name Health
extends VitalStat

signal dead
signal fully_cured
signal take_damage(damage_value : int)
signal healed(heal_value : int)


func is_dead() -> bool:
	return is_vital_stat_empty()
	

func is_full_life() -> bool:
	return is_vital_stat_full()


func damage(damage_value : int):
	if is_dead():
		return
	actual_value -= damage_value
	emit_signal("take_damage", damage_value)
	if is_dead():
		emit_signal("dead")


func heal(heal_value : int):
	if is_full_life():
		return
	actual_value += heal_value
	emit_signal("heal", heal_value)
	if is_full_life():
		emit_signal("fully_cured")
