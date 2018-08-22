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
  puts "- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  counter = 1
  until counter > songs.length
    puts "#{counter}. #{songs}"
    counter += 1
  end
end

def play(songs)
  puts "Please enter a song name or number: "

  song_choice = gets.chomp

  if songs.include?(song_choice)
    puts "Playing /#{song_choice}/"
  elsif song_choice.to_i <= songs.length && song_choice.to_i > 0
    song_number = song_choice.to_i
    puts "Playing /#{songs[song_number - 1]}/"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  loop do
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "help"
      help
    elsif user_response == "exit"
      exit_jukebox
      break
    end
  end
end
