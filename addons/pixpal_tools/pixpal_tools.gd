@tool
extends EditorPlugin

var import_plugin := preload("material_importer.gd").new()

func _enter_tree() -> void:
	add_scene_post_import_plugin(import_plugin)


func _exit_tree() -> void:
	remove_scene_post_import_plugin(import_plugin)
