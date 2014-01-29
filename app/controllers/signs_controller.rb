class SignsController < ApplicationController
  def index
    @signs = Sign.all
  end

  def throw
    random_sign = Sign.random_sign
    if (params[:name] == "rock" && random_sign[0][:name] == "scissor") || (params[:name] == "paper" && random_sign[0][:name] == "rock") || (params[:name] == "scissor" && random_sign[0][:name] == "paper")
      flash[:notice] = "You chose " + params[:name] + ". Your opponent chose " + random_sign[0][:name] + ". You win!"
    elsif params[:name] == random_sign[0][:name]
      flash[:notice] = "You chose " + params[:name] + ". Your opponent chose " + random_sign[0][:name] + ". It's a tie!"
    else
      flash[:notice] = "You chose " + params[:name] + ". Your opponent chose " + random_sign[0][:name] + ". You lose :("
    end
  end

end
