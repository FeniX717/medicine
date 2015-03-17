json.array!(@alcohol_drugs) do |alcohol_drug|
  json.extract! alcohol_drug, :id, :alcohol_addicted, :drugs_adicted, :alcohol_type, :drugs_type, :alcohol_period, :drugs_period, :previous_treatment
  json.url alcohol_drug_url(alcohol_drug, format: :json)
end
