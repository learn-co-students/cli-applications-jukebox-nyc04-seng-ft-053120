require 'pry'

songs = [
  'Phoenix - 1901',
  'Tokyo Police Club - Wait Up',
  'Sufjan Stevens - Too Much',
  'The Naked and the Famous - Young Blood',
  '(Far From) Home - Tiga',
  'The Cults - Abducted',
  'Phoenix - Consolation Prizes',
  'Harry Chapin - Cats in the Cradle',
  'Amos Lee - Keep It Loose, Keep It Tight'
]

def help
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index { |artist_title, index| puts "#{index + 1}. #{artist_title}" }
end

def play(songs)
  puts 'Please enter a song name or number:'
  user_selection = gets.chomp

  if songs.include?(user_selection)
    puts "Playing #{songs.find { |song| song == user_selection }}"
  elsif user_selection.to_i >= 1 && user_selection.to_i < songs.length
    puts "Playing #{songs[user_selection.to_i - 1]}"
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  while true do
    puts 'Please enter a command:'
    user_command = gets.chomp
    case user_command
    when 'exit'
      exit_jukebox
      break
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    else
      puts 'Invalid input, please try again'
    end
  end
end
