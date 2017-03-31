json.extract! tracked_thing, :id, :time_of_thing, :notes, :created_at, :updated_at
json.url tracked_thing_url(tracked_thing, format: :json)
