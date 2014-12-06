json.array!(@apps) do |app|
  json.extract! app, :id, :name, :favor
  json.url app_url(app, format: :json)
end
