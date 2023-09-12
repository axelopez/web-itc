json.extract! blog, :id, :titulo, :contenido, :estado, :comentarios, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
