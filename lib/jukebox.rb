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

def list(songs_array)
  
  songs_array.each_with_index do |song, i|
    puts "#{i+1} #{song}"
  end
end
  

def play(song_list)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if song_list.include?(choice)
    puts "Playing #{choice}"
  elsif (1..song_list.length).include?(choice.to_i)
    puts "Playing #{song_list[choice.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  what_command = "" 
  until what_command == "exit" do
  puts "Please enter a command:"
  what_command = gets.chomp
    case what_command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
  end
exit_jukebox
end 
  
    
    
  
  
  

  
  