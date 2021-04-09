class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.datetime :ready_at
      t.float :amount
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
