json.array!(@pages) do |page|
  json.extract! page, :title, :abstract, :content, :ancestry
  json.url page_url(page, format: :json)
end