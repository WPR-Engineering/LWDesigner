class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.string :hostname
      t.text :location
      t.string :ipAddress
      t.string :subnetMask
      t.string :nodeType

      t.timestamps
    end
  end
end
