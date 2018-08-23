#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
 my_songs = {
"Go Go GO" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/05.mp3',
"Blue" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/cristinamurillo/jukebox-cli-dumbo-web-091718/audio/Emerald-Park/07.mp3'
 }

def help
    puts "I accept the following commands: \n
  - help : displays this help message \n 
  - list : displays a list of songs you can play \n 
  - play : lets you choose a song to play \n 
  - exit : exits this program"
end



def list(my_songs)
  counter = 1 
  my_songs.each { |song, directory|
    puts "#{counter}. #{song}"
    counter+=1
  }
end


def play(my_songs)
  puts "Please enter a song name:"
  user_selection = gets.chomp 
  counter = 1
  my_songs.each { |song, directory|
    if song.include?(user_selection) 
      open directory 
      counter = 25 
    end  
    counter+=1
  }
  if counter < 25  
    puts "Invalid input, please try again"
  end 
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  user_input = ""
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp 
    case user_input
      when "list"
        list(songs) 
      when "play"
        play(songs)
      when "help"
        help 
      when "exit"
        exit_jukebox 
    end
  end 
end

run(my_songs)
