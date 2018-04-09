class CreateQors < ActiveRecord::Migration[5.1]
  def change
    create_table :qors do |t|
      t.string :hostname
      t.string :location
      t.string :macAddress
      t.string :ipAddress
      t.string :subnetMask
      t.string :serialNumber

      t.timestamps
    end
  end
end
