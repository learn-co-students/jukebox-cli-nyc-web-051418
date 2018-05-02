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


def help
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end



def list (songs)
  
  songs.each_with_index do |track, index|
    puts "#{index}. #{track}"
  end
  
end

def play (songs)
  
  puts "Please enter a song name or number:"
  user_selection = gets.chomp
  
  #binding.pry
  
  if songs.include?(user_selection)
    puts "playing #{user_selection}"
    
    
  elsif (1..9).to_a.include?(user_selection.to_i)
    
    puts "Playing #{songs[(user_selection.to_i) - 1]}"
    
  
  else
    puts "Invalid input, please try again"
    #play(songs)
  end

end



def exit_jukebox

  puts "Goodbye"

end



def run (songs)
  
  help
  puts "Please enter a command:"
  user_selection = ""
  
  while user_selection
      user_selection = gets.chomp
      if user_selection == "help"
        help
        
      elsif user_selection == "list"
        list(songs)
      
      elsif user_selection == "play"
        play(songs)
  
      elsif user_selection == "exit"
        exit_jukebox
        break
        
      else
        puts "Please enter a command:"
      end #end if
  
  end #end loop
end #end #run
  
  
  
  
  
  
  
  
  
  
  
  
  






