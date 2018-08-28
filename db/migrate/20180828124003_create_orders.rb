class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.string :email, null: false
      t.integer :status, null: false, default: 0
      t.references :cart, foreign_key: true
      t.decimal :amount, precision: 6, scale: 2

      t.timestamps
    end
  end
end
