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
	puts "I accept the following comands:"
	puts "- help : displays this help message"
	puts "- list : lets you choose a song to play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(my_songs)
	my_songs.each_with_index do |song, i|
	puts #{i+1}. #{song}"
end

def play(songs)
	puts "Please enter a song name or number"
	input = gets.chomp
	songs.each_with_index do |songs, idx|
	if input.to_i == (idx+1) || input == song
	puts "Playing #{song}"
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
	puts "Please enter a command:"
	input = gets.chomp
	while  input != "exit"
		case input
		when "play"
		play(song)
		when "list"
		list(my_song)
		when "help"
		help
		when "exit"
		exit_jukebox
		else
		puts "Invalid input, please try again"
		input = get.chomp
		end
	end
end

