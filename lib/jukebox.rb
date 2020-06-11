def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  
  # Displays each song with a track number
  songs.each_with_index { |song, idx| puts "#{idx + 1}. #{song}" }
end


def play(songs)
  
  # Prompts user for a song name or number, and get user's input
  puts "Please enter a song name or number:"
  users_input = gets.strip
  
  # Loop through songs array to find matching song number or song name
  songs.each_with_index do |song_name, idx|
    song_number = (idx + 1).to_s # User's input is a string, must convert song number's to match
    if users_input == song_number || users_input == song_name 
      puts "Playing #{song_name}"
      return # Early return so that the "Invalid input" statement won't be output
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # Prompts user for command and store command; .strip strips off white spaces, whereas .chomp takes away new-line character that comes with user's input
  puts "Please enter a command:"
  users_command = gets.strip.chomp
  
  # Switch case for each of the user's command
  case users_command
  when "help"
    help
    run(songs) # Call the function again to re-prompt user for another input
  when "list"
    list(songs)
    run(songs) # Call the function again to re-prompt user for another input
  when "play"
    play(songs)
    run(songs) # Call the function again to re-prompt user for another input
  when "exit"
    exit_jukebox
  else
  end
end