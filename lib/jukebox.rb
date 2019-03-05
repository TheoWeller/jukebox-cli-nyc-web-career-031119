#require 'pry'
def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each do |song|
  if user_input.include?(user_input)
    puts "Playing #{song}"
  else
    puts "Invalid input."
  end
end

def list(songs)
  songs.each_with_index do |song, index|
  puts "#{index + 1}. #{song}"
end
end

def exit_jukebox
  puts "Goodbye"
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
      play(songs)
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
