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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)


### The `help` Method
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program "
end 


### The `list` Method
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
	
def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end 

# ### The `play` Method
# This method also takes in an argument of the `songs` array. It first `puts` out the prompt: `"Please enter a song name or number:"`. It then stores the user's response using `gets.chomp`. 

# If the user's response is a valid song number or song name, the method should `puts` out: `"Playing <song name>"`. Otherwise, it should `puts` out: `"Invalid input, please try again"`. 


def play(songs)
  puts "Please enter a song name or number"
  input = gets.chomp
  songs.each.with_index(1) do |song, idx|
    if input.to_i == idx || input == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
    end 
   end
end
# def play(songs) 
#   puts "Please enter a song name or number:"
#   input = gets.chomp 
#   songs.each.with_index do |song, index|
#     if input == songs.index.downcae 
#       puts "Playing #{song}"
#     else 
#       puts "Invalid input, please try again"
#     end #if
#   end 
# end 
 
 def exit_jukebox
   puts "Goodbye"
 end 

 #this method is the same as in jukebox.rb	  #this method is the same as in jukebox.rb
  help 
 def run(my_songs)
  input = ""
  while input != "exit" #try with unless 
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end


# The `exit_jukebox` Method
 
# This method also takes in an argument of the `songs` array. It first `puts` out the prompt: `"Please enter a song name or number:"`. It then stores the user's response using `gets.chomp`. 

# If the user's response is a valid song number or song name, the method should `puts` out: `"Playing <song name>"`. Otherwise, it should `puts` out: `"Invalid input, please try again"`. 

# This method takes in an argument of the `songs` array and `puts` out the following:



# **Hint:** Use the `Array#each_with_index` method to access the index number of a given element as you step through the iteration. Remember that arrays are indexed starting at `0`. So, adding `1` to the index number at a given step of the iteration will result in the correct song number for the purposes of outputting your list of songs. 



# ### The `exit_jukebox` Method