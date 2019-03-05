#require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

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
  if user_input.length == 1
    user_input.to_i
    puts "Playing #{songs[user_input]}"
  elsif songs.include(user_input)
    puts "Playing #{songs[user_input]}"
  else
    puts "Invalid input"
  end
end

def list
  counter = 1
  songs = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapin - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keep It Tight"
  ]
  songs.each do |song|
  puts "#{counter}. #{song}"
  counter += 1
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
