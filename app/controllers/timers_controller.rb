class TimersController < ApplicationController
  def index
    @user = User.new
  end

  def new
    #@timer = Timer.new
  end

  def update
    @timer = timer.new
  end
end
