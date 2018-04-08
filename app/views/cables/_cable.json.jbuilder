json.extract! cable, :id, :code, :number, :type, :color, :termination, :description, :created_at, :updated_at
json.url cable_url(cable, format: :json)
