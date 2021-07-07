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
  songs.each_with_index {|song, idx| puts "#{idx + 1}. #{song}"}
end

def songs_hash(songs)
  songs_hash = {}
  songs.each_with_index {|song, idx| songs_hash[(idx+1).to_s] = song}
  return songs_hash
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets().chomp()
  songs_hash = songs_hash(songs)

  if songs_hash.has_key?(request)
    puts "Playing #{songs_hash[request]}"
  elsif songs_hash.has_value?(request)
    puts "Playing #{request}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets().chomp()

  until input == "exit"
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    else
      puts "Invalid input, please try again"
    end

    puts "Please enter a command:"
    input = gets().chomp()
  end
  exit_jukebox if input == "exit"
end
