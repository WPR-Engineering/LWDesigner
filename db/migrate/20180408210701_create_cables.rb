class CreateCables < ActiveRecord::Migration[5.1]
  def change
    create_table :cables do |t|
      t.string :code
      t.integer :number
      t.string :type
      t.string :color
      t.string :termination
      t.text :description

      t.timestamps
    end
  end
end
