json.extract! meeting, :id, :user_id, :genre, :start_time, :calc_time, :comment, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
