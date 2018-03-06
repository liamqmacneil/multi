var file, content
content = argument0
file = file_text_open_write("server_log.txt")
file_text_write_string(file, string(content));
file_text_close(file)