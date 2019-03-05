#require 'pry'


def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play
end

def list
  songs.each do |song|
  puts song
end
end

def exit_jukebox
end

def run(songs)
  help
  puts "Please enter a command:"
  #binding.pry
  while user_input = gets.chomp
    case user_input
    when "help"
      help
    when "play"
      play
    when "list"
      list
    when "exit"
      exit_jukebox
      break
    else
      puts "Incorrect command."
    end
    end
  end
