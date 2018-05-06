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
          - list : displays a list of songs you can displays
          - play : lets you choose a song to play
          - exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |name, i|
    puts "#{i + 1}. #{name}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
    user_input = gets.chomp
    if songs.include?(user_input) 
      puts "Playing #{user_input}"
      elsif user_input.to_i.between?(1, 9)
        puts "Playing song # #{songs[user_input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs) 
  user_input = ""
   while user_input 
    puts "Please enter a command:"
     user_input = gets.chomp 
      case user_input 
      when "help"
        help 
        when "list"
          list(songs)
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