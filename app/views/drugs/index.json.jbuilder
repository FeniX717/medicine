json.array!(@drugs) do |drug|
  json.extract! drug, :id, :addicted, :drug_type, :drugs_period, :previous_treatment
  json.url drug_url(drug, format: :json)
end
