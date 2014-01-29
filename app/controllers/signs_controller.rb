class SignsController < ApplicationController
  def index
    @signs = Sign.all
  end

  def throw
  end

end
