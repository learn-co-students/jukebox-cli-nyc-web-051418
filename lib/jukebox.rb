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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

# describe '#play' do
# it "can find a song when given a number from the user" do
#     allow(self).to receive(:gets).and_return("1")
#     expect { play(songs) }.to output(/Phoenix - 1901/).to_stdout
#   end
# it "can find a song when given a full song name" do
#   allow(self).to receive(:gets).and_return("Phoenix - 1901")
#   expect{ play(songs) }.to output(/Phoenix - 1901/).to_stdout
# end
# it 'returns an error when given a number that does not correspond to a song' do
#   allow(self).to receive(:gets).and_return("12323")
#   expect { play(songs) }.to output(/Invalid input, please try again/).to_stdout
# end
# it 'returns an error when given a name that does not correspond to an existing song' do
#   allow(self).to receive(:gets).and_return("Blah blah foo blah")
#   expect { play(songs) }.to output(/Invalid input, please try again/).to_stdout
# end
# end


def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  number = 1
  songs.each do |song|
    if selection == song || selection == number.to_s
      puts "playing #{song}"
    else
      puts "Invalid input, please try again"
    end
    number +=1
  end
end

# describe "#list" do
#       it "lists out the available songs" do  
#         expect { list(songs) }.to output(/Phoenix - 1901/).to_stdout
#       end
# end

def list(songs)
  puts songs
end
  
# describe "#exit_jukebox" do 
#   it "terminates the running of the program and outputs 'Goodbye'" do
#     expect { exit_jukebox }.to output(/Goodbye/).to_stdout 
#   end
# end

def exit_jukebox
  puts "Goodbye"
end

# describe '#run' do
# it "starts the program script" do
#   allow(self).to receive(:gets).and_return("exit")
#   expect { run(songs) }.to output(/Please enter a command:/).to_stdout
# end
# end

def run(songs)
  help
  puts "Please enter a command:"
  selection = gets.chomp
  while selection != "exit"
    if selection == "help"
      help
    elsif selection == "play"
      play(songs)
    elsif selection == "list"
      list(songs)
    elsif selection == "exit"
      exit_jukebox
    end
    puts "Please enter a command:"
    selection = gets.chomp
  end
  exit_jukebox
end
  
  
  
  
  
  
  
  
  
  