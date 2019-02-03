json.extract! election, :id, :title, :description, :candidate0, :candidate1, :candidate2, :candidate3, :candidate4, :candidate5, :candidate6, :candidate7, :candidate8, :result, :slug, :created_at, :updated_at
json.url election_url(election, format: :json)
