json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :creidt
  json.url course_url(course, format: :json)
end
