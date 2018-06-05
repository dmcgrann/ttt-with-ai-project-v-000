class CLI 
  
  def initialize
  end
  
  puts "Welcome to tic tac toe!"

  def start
    puts "How many players? Enter 0 for a simulation, otherwise 1 or 2 players"
    input = gets.strip
    case input
      when "0"
        Game.new(player_1=Players::Computer.new("X"), player_2=Players::Computer.new("O")).play
        puts "Game over. Play again?"
        play_again?
      when "1"
        Game.new(player_1=Players::Human.new("X"), player_2=Players::Computer.new("O")).play
        puts "Game over. Play again?"
        play_again?
      when "2"
        Game.new(player_1=Players::Human.new("X"), player_2=Players::Human.new("O")).play
        puts "Game over. Play again?"
        play_again?
      else
        puts "Invalid entry."
        start
    end
  end
    
  def play_again?
    input = gets.strip
    case input
    when "y"
      start
    when "n"
      puts "See you next time!"
    else
      play_again?
    end
  end
  start
  
    
    
  end