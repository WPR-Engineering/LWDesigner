class AddSerialNumberToNode < ActiveRecord::Migration[5.1]
  def change
    add_column :nodes, :serialNumber, :string
  end
end
