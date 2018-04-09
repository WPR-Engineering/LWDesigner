class CreateNetworkings < ActiveRecord::Migration[5.1]
  def change
    create_table :networkings do |t|
      t.string :hostname
      t.string :type
      t.string :model
      t.string :macAddress
      t.string :ipAddress
      t.string :subnetMask
      t.integer :portCount

      t.timestamps
    end
  end
end
