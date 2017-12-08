class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :position
      t.integer :phone_number
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
