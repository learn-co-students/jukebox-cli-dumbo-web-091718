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

def list(arr)
  arr.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

def play(arr)
  puts "Please enter a song name or number:"
  a = gets.chomp
  if arr.include?(a)
    puts "Playing #{a}"
  elsif (1..9).to_a.include?(a.to_i)
    puts "Playing #{arr[a.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  answer = ""
  while answer != "exit"
    puts "Please enter a command: "
    answer = gets.chomp
    case answer
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid Command!"
    end
  end
end





















































