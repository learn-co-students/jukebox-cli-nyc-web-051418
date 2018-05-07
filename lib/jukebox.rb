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
  #lists out possible commands user can enter
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  # takes in an argument of the songs array and puts a string
    #of an indexed list of songs
    songs.each_with_index do |song,index|
      puts "#{index+1}. #{song}\n"
    end
end

def play(songs)
  # accepts user input of a song or # of song and puts "Playing <song name>"
  puts "Please enter a song name or number:"
  requested_song = gets.chomp
  if (1..9).to_a.include?(requested_song.to_i)
    puts "Playing #{songs[requested_song.to_i - 1]}"
  elsif songs.include?(requested_song)
    puts "Playing #{requested_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  # puts "Goodbye"
  puts "Goodbye"
end

def run(songs)
# needs a loop to keep program running until user enters "exit" in prompt
  #initiate command
  # call on #help to show user list of commands
  # should then accept input from user
    # case..when..when..when depending on input
      # when "exit", break out of loop
      # when "list", call on #list
      # when "play", call on #play
      # when "help", call on #help
  command = ""
  while command
  puts "Please enter a command:"
  command = gets.chomp
  case command.downcase
    when "exit"
      exit_jukebox
      break
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      help
    end
  end
end
