
class View
  
  def title
    puts '~*~'*3
    puts 'MUSTIFY-ME'
    puts '~*~'*3
    puts
    puts 'Name the artist who recorded:'
    puts
  end

  def user_input
    gets.chomp
    # sleep(0.75)
  end

  def show_track(track)
    puts "~~ #{track} ~~"
    puts
    puts
  end

  def show_choices(choices)
      choices.each_with_index {|choice, index| puts "#{index + 1}.) #{choice}"}
  end


  def show_answer(answer)
    puts "#{answer}"
  end

  def incorrect(correct_answer)
    responses = ["Dang son you need to study...", "Really?", "(incorrect buzzer noise)", "Hahaha nice try.", "Outlook not so good", "Time for a beer I guess, we're in for the long haul"]
    puts responses.sample
    puts
    puts "The correct response is: " + correct_answer + ""
    puts
  end


  def clear
    puts "\e[H\e[2J"
  end

  def again?
    puts
    puts "Would you like to play again?(y/n)"
  end

end

