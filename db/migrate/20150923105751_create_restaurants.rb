class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.string :phone_number
      t.text :category
      t.text :description
      t.integer :stars

      t.timestamps null: false
    end
  end
end
