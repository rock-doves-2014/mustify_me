class View
  def self.title
    puts '~*~'*3
    puts 'MUSTIFY-ME'
    puts '~*~'*3
    puts
    puts 'Name the artist who recorded:'
    puts
  end

  def self.user_input
    gets.chomp
    sleep(0.75)
  end

  def self.show_track(track)
    puts "~~ #{track} ~~"
    puts
    puts
  end

  def self.show_choices(choices)
      choices.each_with_index {|choice, index| puts "#{index + 1}.) #{choice}"}
  end


  def self.show_answer(answer)
    puts "#{answer}"
  end

  def self.incorrect(correct_answer)
    responses = ["Dang son you need to study...", "Really?", "(incorrect buzzer noise)", "Hahaha nice try.", "Outlook not so good", "Time for a beer I guess, we're in for the long haul"]
    puts responses.sample
    puts
    puts "The correct response is: " + correct_answer + ""
    puts
  end


  def self.clear
    puts "\e[H\e[2J"
  end

  def self.again?
    puts
    puts "Would you like to play again?(y/n)"
  end

end

