class Player
  @@win = false
  @@array = Hash.new
  @@winner = ""

  def play(location)
    if @@array[location] == nil
      @@array[location] = 'X'
    end
    win_status
    print_arr
    other_play
  end

  public def other_play
    x = rand(9)
    if @@array[x] == nil
      @@array[x] = 'O'
    else
      other_play
    end
    print_arr
    new_play
  end
  public def new_play
    if !@@win
      puts 'Enter location you want to play'
      play_loc = gets.chomp.to_i
      puts play(play_loc)
    else
      puts "Winner #{@@winner}"
    end
  end

  private def print_arr
    puts "#{@@array[1]}  #{@@array[2]}  #{@@array[3]}"
    puts "#{@@array[4]}  #{@@array[5]}  #{@@array[6]}"
    puts "#{@@array[7]}  #{@@array[8]}  #{@@array[9]}"

  end
  private def win_status
    if @@array[1] == @@array[4] && @@array[4] == @@array[7] && (@@array[1] == 'X' || @@array[1] == 'O')
      @@win = true
      @@winner = "#{@@array[1].to_s}"
    elsif @@array[2] == @@array[5] && @@array[5] == @@array[8] && (@@array[2] == 'X' || @@array[2] == 'O')
      @@win = true
      @@winner = "#{@@array[2].to_s}"
    elsif @@array[3] == @@array[6] && @@array[6] == @@array[9] && (@@array[3] == 'X' || @@array[3] == 'O')
      @@win = true
      @@winner = "#{@@array[3].to_s}"
    elsif @@array[1] == @@array[2] && @@array[2] == @@array[3] && (@@array[1] == 'X' || @@array[1] == 'O')
      @@win = true
      @@winner = "#{@@array[1].to_s}"
    elsif @@array[4] == @@array[5] && @@array[5] == @@array[6] && (@@array[4] == 'X' || @@array[4] == 'O')
      @@win = true
      @@winner = "#{@@array[4].to_s}"
    elsif @@array[7] == @@array[8] && @@array[8] == @@array[9] && (@@array[7] == 'X' || @@array[7] == 'O')
      @@win = true
      @@winner = "#{@@array[7].to_s}"
    elsif @@array[1] == @@array[5] && @@array[5] == @@array[9] && (@@array[1] == 'X' || @@array[1] == 'O')
      @@win = true
      @@winner = "#{@@array[2].to_s}"
    elsif @@array[3] == @@array[5] && @@array[5] == @@array[9] && (@@array[3] == 'X' || @@array[3] == 'O')
      @@win = true
      @@winner = "#{@@array[3].to_s}"
    else
      @@win = false
    end
  end

end

game = Player.new
puts 'You are the X'
game.new_play
