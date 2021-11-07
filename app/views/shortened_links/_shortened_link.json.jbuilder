json.extract! shortened_link, :id, :original_url, :code, :created_at, :updated_at
json.url shortened_link_url(shortened_link, format: :json)
