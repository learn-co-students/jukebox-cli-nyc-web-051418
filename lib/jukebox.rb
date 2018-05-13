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
  songs.each do |z|
    puts "#{counter}. #{z}"
    counter += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  counter = 1

  songs.each do |song_name|
    if input == song_name || input == counter.to_s
      puts "Playing #{song_name}"
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
  input = gets.chomp

      case input
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        help
      end
  end
end
