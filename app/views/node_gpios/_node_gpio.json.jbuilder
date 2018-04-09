json.extract! node_gpio, :id, :hostname, :location, :serialNumber, :macAddress, :ipAddress, :subnetmask, :created_at, :updated_at
json.url node_gpio_url(node_gpio, format: :json)
