class CreateAutos < ActiveRecord::Migration[5.1]
  def change
    create_table :autos do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :trim
      t.integer :vin
      t.string :auto_img
      t.text :auto_description
      t.string :condition
      t.integer :mileage
      t.integer :list_price
      t.integer :price_sold
      t.boolean :sold
      t.boolean :featured
      t.integer :purchase_price
      t.date :purchase_date
      t.integer :price_sold
      t.date :date_sold
      t.string :sold_by
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
