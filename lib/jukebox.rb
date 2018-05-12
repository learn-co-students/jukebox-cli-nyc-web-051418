
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs_list)
  songs_list.each_with_index do |title, index|
    puts "#{index+1}. #{title}"
  end
end

def play(songs_list)

  while true

    puts("Please enter a song name or number:")
    song_name = gets.chomp

    songs_list.each_with_index do |title, index|
      if song_name == title || song_name == (index+1).to_s
        puts "Playing #{title}"
        return song_name
      end
    end
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)

  help

  while true
    puts "Please enter a command:"
    user_resp = gets.chomp

    name = case user_resp
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end

end
