class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, scale: 2, precision: 5, null: false, default: 0.00
    end
  end
end
