# ResourceManager.gd

extends Node

# A simple resource management class for GDScript.

class_name ResourceManager, "ResourceManager"

# Dictionary to hold resources
var resources = {}  

# Load a resource from the specified path
func load_resource(path: String) -> Resource:
    if path in resources:
        return resources[path]
    
    var resource = preload(path)  
    resources[path] = resource  
    return resource

# Unload a resource to free up memory
func unload_resource(path: String) -> void:
    if path in resources:
        resources.erase(path)  
        # Optionally call resource.free() if applicable

# Clear all resources
func clear_resources() -> void:
    resources.clear()