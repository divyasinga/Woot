
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :availability
      t.string :name
      t.string :description
      t.float :price
      t.string :color
      t.integer :quantity
      t.text :shipping
      t.string :condition
      t.text :features
      t.text :Specs
      t.text :Stats
      t.text :Top_Comments
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
