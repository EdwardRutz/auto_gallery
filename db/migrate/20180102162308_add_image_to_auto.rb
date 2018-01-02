class AddImageToAuto < ActiveRecord::Migration[5.1]
  def change
    add_column :autos, :image, :string
  end
end
