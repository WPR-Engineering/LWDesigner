class AddModeToNode < ActiveRecord::Migration[5.1]
  def change
    add_column :nodes, :mode, :string
  end
end
