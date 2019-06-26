class Api::NameController < ApplicationController

  def name_in_caps
    p params
    @name = params["name"].upcase
    if @name.chr.downcase == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'name_in_caps.json.jb'
  end

  def guess_a_number
    number = rand(0..100)
    p number
    if params["guess"].to_i == number
      @message = "Congrats, you guessed correctly!"
    elsif params["guess"].to_i < number
      @message = "Oops, too low. Guess a higher number."
    else params["guess"].to_i > number
      @message = "Oops, too high. Guess a lower number."
    end
    render 'guess_a_number.json.jb'
  end
end
