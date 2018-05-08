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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_entered = gets.chomp

  if (1..9).to_a.include?(song_entered.to_i)
    puts "Playing #{songs[song_entered.to_i - 1]}"
  elsif songs.include?(song_entered)
    puts "Playing #{song_entered}."
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(command_entered)
  # method should call on the help method to show the user the available commands.
  # Then, it should puts out the prompt: "Please enter a command:".
  # It should capture the user's response using gets.chomp or gets.strip.
  # # We need to keep our program running as long as the user's input is not "exit".
  # Use a loop to continue asking the user for input until or unless their input is "exit".
  # Use if or case statements to determine how your program will respond to a user's input.
  # For example, if their input is "list", call the list method, if their input is "play", call the play method, if their input is "help", call the help method
  # and if their input is "exit", call the exit_jukebox method and break out of your loop to stop the program.

  until command_entered == "exit"
    puts "Please enter a command:"
    command_entered = gets.chomp

    case command_entered
    when "list"
      list
    when "play"
      play
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      exit_jukebox
    end

  end
end
