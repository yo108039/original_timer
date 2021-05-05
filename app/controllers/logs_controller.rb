class LogsController < ApplicationController
  def index
    @meetings = Meeting.all
  end
end
