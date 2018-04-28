require 'pry'
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

def run(songs)
  help
  exited = false
  while !exited
    puts "Please enter a command:"
    cmd = gets.chomp
    if cmd == "help"
      help
    elsif cmd == "exit"
      exit_jukebox
      return "exit"
    elsif cmd == "play"
      play(songs)
    elsif cmd == "list"
      list(songs)
    else
      puts "Invalid Command"
    end
  end
  return "exit"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  if request.to_i.to_s == request ##integer
    if request.to_i-1 < songs.length
      puts "Playing <#{songs[request.to_i-1]}>"
    else
      puts "Invalid input, please try again"
    end
  elsif songs.include?(request)
    puts "Playing <#{request}>"
  else
    puts "Invalid input, please try again"
  end

end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(available_songs)
  available_songs.each do |song|
    puts song
  end
end

def exit_jukebox
  puts "Goodbye"
end
