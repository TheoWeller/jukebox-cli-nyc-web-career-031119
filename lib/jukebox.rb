def help
  puts
  "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(keyword)
end

def list(keyword)
end

def exit_jukebox(keyword)
end

def run
  help
  puts "Please enter a command:"
  response = gets.chomp

  case response
  when "help"
    help
  when "play"
    play
  when "list"
    list
  else "exit"
    exit_jukebox
  end
end
run
