class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :price
      t.string :quantity
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
