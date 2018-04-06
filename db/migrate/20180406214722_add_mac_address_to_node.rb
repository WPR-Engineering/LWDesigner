class AddMacAddressToNode < ActiveRecord::Migration[5.1]
  def change
    add_column :nodes, :macAddress, :string
  end
end
