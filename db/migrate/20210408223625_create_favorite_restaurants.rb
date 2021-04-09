class CreateFavoriteRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_restaurants do |t|
      t.belongs_to :restaurant, null: false, foreign_key: {on_delete: :cascade}
      t.belongs_to :user, null: false, foreign_key: {on_delete: :cascade}
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
