class CreateNodeGpios < ActiveRecord::Migration[5.1]
  def change
    create_table :node_gpios do |t|
      t.string :hostname
      t.text :location
      t.string :serialNumber
      t.string :macAddress
      t.string :ipAddress
      t.string :subnetmask

      t.timestamps
    end
  end
end
