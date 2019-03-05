#require 'pry'
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play
  list
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input == songs[user_input]
    puts "Playing #{songs[user_input]}"
  else
    puts "Invalid input."
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    index += 1
  puts "#{index}. #{song}"
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
      list(songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Incorrect command."
    end
    end
  end
