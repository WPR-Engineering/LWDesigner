json.extract! node, :id, :hostname, :location, :ipAddress, :subnetMask, :nodeType, :created_at, :updated_at
json.url node_url(node, format: :json)
