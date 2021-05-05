class TimersController < ApplicationController
  def index
    @timer = Timer.new
  end

  def create
    @timer = Meeting.new(timer_params)
    if @timer.valid?
      @timer.save
      redirect_to :root
    else
      render :index
    end
  end

end

  private

  def timer_params
    binding.pry
    params.permit(:genre, :start_time, :calc_time, :comment).merge(user_id: current_user.id)
  end
