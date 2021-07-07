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
  prompt = <<-COM
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
COM
  puts prompt
end



def list(my_songs)
 puts my_songs
end


def play(my_songs)
  puts "Please enter a song name or number:"
  var = gets.chomp
  var
  my_songs.each_with_index do |ele, idx|
      arr = []
      arr = ele.split(" - ")
      title = arr[1]
      num = var.to_i
      
    if var == title || var == ele
      song1 = my_songs[idx]
      puts "Playing #{song1}"
    elsif num > 0 && num <= my_songs.length
      i = num - 1
      song2 = my_songs[i]
      puts "Playing #{song2}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  answer = ""
  
    while answer != "exit"   
      puts "Please enter a command:"
      answer = gets.chomp
      list(my_songs) if answer == "list"
      play(my_songs) if answer == "play"
      help  if answer == "help"
    end
    
  exit_jukebox   
end