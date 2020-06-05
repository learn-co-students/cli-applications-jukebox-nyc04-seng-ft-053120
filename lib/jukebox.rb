def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number: "
  input = gets.strip
  
  input_num = Integer(input) rescue false
  
  if input_num
    if input_num > songs.length
      puts "Invalid input, please try again"
      return
    end
    
    puts "Playing #{songs[input_num-1]}"
    return
  else
    songs.each do |song|
      if input == song
        puts "Playing #{song}"
        return
      end
    end
  end
    
  puts "Invalid input, please try again"
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  
  loop do 
    input = gets.strip
    case input
      when "help"
        help()
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
        
    if input == "exit"
      break
    end
  end
  
  exit_jukebox
end