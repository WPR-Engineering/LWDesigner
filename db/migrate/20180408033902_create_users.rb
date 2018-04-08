class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :group
      t.string :password_digest
      t.string :external_id
      t.boolean :active, :default => true
      t.string :role

      t.timestamps
    end
  end
end
