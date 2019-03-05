require 'pry'
def help
  puts
  "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play
end

def list
end

def exit_jukebox
end

def run
  help
  puts "Please enter a command:"
  binding.pry
while user_input = gets.chomp
  case user_input
  when "help"
    break
    help
  when "play"
    play
    break
  when "list"
    list
    break
  else "exit"
    exit_jukebox
    break
  end
  end
end
run
