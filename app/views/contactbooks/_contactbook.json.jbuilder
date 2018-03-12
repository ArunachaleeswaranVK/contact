json.extract! contactbook, :id, :name, :address, :city, :phone, :email, :created_at, :updated_at
json.url contactbook_url(contactbook, format: :json)
