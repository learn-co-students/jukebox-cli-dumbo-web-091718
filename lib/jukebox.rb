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

def help()
  puts %{
    I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
  }
end

def list(songs)
  songs.each_with_index { |song, num| puts "#{num + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  # When converting strings that do not begin with a digit to an integer, Ruby returns 0.
  # E.g: 'a'.to_i => 0, 'a12'.to_i => 0
  song_numbers = (1..9).to_a

  if songs.include?(input)
    puts "Playing #{input}"
  elsif song_numbers.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  help()

  input = -1
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "help"
      help()
    elsif input == "play"
      play(songs)
    end
  end

  exit_jukebox()
end