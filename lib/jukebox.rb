require "pry"
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song,index|

        puts "#{index+1}. #{song}"
    end
end
def play(songs)
    puts "Please enter a song name or number:"
    choice= gets.strip

    if(songs.include?(choice))
        puts "Playing #{choice}"
    elsif(choice.to_i.between?(1,songs.length))
        puts "Playing #{songs[choice.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
  end
  def exit_jukebox
    puts "Goodbye"
  end
  def run(songs)
    choice=""
    until(choice == "exit") do
    puts "Please enter a command:"
    choice=gets.strip

    if(choice=="help")
        help
    elsif(choice=="list")
        list(songs)
    elsif(choice=="play")
        play(songs)
    elsif(choice=="exit")
        exit_jukebox
    end
end
end



