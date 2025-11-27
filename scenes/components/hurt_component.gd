class_name HurtComponent
extends Area2D

@export var tool: DataTypes.Tools = DataTypes.Tools.None

signal hurt

func _on_area_entered(area: Area2D) -> void:
	var hit_compoment = area as HItComponent
	print(tool)
	print(hit_compoment.current_tool)
	
	if tool == hit_compoment.current_tool:
		hurt.emit(hit_compoment.hit_damage)
