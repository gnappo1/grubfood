class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cousine
      t.string :chef
      t.string :street
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country

      t.timestamps
    end
  end
end
