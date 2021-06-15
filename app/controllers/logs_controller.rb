class LogsController < ApplicationController
  def index
    @meetings = Meeting.find_by_sql(['select * from meetings where user_id = :id', {id: current_user.id}])
  end

end
