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

def list(songs)
  counter = 1
  songs.each do |x|
    puts "#{counter}. #{x}"
    counter += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  a = gets.chomp
  counter = 1
  songs.each do |x|
    if a == x || a == counter.to_s
      puts "Playing #{x}"
    else
      puts "Invalid input, please try again"
    end
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  z = gets.chomp
    if z == "list"
      list(songs)
    elsif z == "help"
      help
    elsif z == "play"
      play(songs)
    elsif z == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
