json.array!(@steps) do |step|
  json.extract! step, :id, :file_record_id, :person_id, :office_id
  json.url step_url(step, format: :json)
end
