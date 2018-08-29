class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
<<<<<<< HEAD
=======
      t.references :user
>>>>>>> 1633745569b5f3dffbd827cca14093ea89fd77b2
      t.integer :status, null: false, default: 0
      t.references :cart, foreign_key: true
      t.references :user
      t.decimal :amount, precision: 6, scale: 2

      t.timestamps
    end
  end
end
