extends Node

# AudioManager class for managing audio related functionalities in GDScript.
class_name AudioManager

# List to hold audio streams
var audio_streams = {}

# Method to load an audio file
func load_audio(stream_name: String, file_path: String):
    var audio_stream = preload(file_path)
    audio_streams[stream_name] = audio_stream

# Method to play an audio stream
func play_audio(stream_name: String):
    if stream_name in audio_streams:
        var audio_player = AudioStreamPlayer.new()
        audio_player.stream = audio_streams[stream_name]
        add_child(audio_player)
        audio_player.play()  
        
# Method to stop audio stream
func stop_audio(stream_name: String):
    if stream_name in audio_streams:
        var audio_player = get_node(audio_player)
        audio_player.stop()  
