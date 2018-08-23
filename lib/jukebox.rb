
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
  puts "I accept the following commands: \n
  - help : displays this help message \n 
  - list : displays a list of songs you can play \n 
  - play : lets you choose a song to play \n 
  - exit : exits this program"
end

def list(songs_array)
  counter = 1 
  while counter < songs_array.size 
    puts "#{counter}. #{songs_array[counter-1]}"
    counter+=1
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_selection = gets.chomp 
  counter = 1
  songs_array.each { |song|
    if song.include?(user_selection) || counter == user_selection
      puts "Playing #{song}"
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