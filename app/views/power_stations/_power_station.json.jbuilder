json.extract! power_station, :id, :hostname, :location, :macAddress, :ipAddress, :subnetmask, :serialNumber, :created_at, :updated_at
json.url power_station_url(power_station, format: :json)
