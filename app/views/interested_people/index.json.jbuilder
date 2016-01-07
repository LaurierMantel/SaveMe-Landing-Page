json.array!(@interested_people) do |interested_person|
  json.extract! interested_person, :id
  json.url interested_person_url(interested_person, format: :json)
end
