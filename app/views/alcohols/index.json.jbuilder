json.array!(@alcohols) do |alcohol|
  json.extract! alcohol, :id, :addicted, :type, :drinking_period, :previous_treatment
  json.url alcohol_url(alcohol, format: :json)
end
