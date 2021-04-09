class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.references :menu, null: false, foreign_key: {on_delete: :cascade}
      t.references :item, null: false, foreign_key: {on_delete: :cascade}
      t.float :price

      t.timestamps
    end
  end
end
