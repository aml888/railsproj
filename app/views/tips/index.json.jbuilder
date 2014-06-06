json.array!(@tips) do |tip|
  json.extract! tip, :id, :tip, :date, :source
  json.url tip_url(tip, format: :json)
end
