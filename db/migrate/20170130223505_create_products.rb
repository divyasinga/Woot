class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :availability
      t.string :name
      t.string :description
      t.float :price

      t.timestamps null: false
    end
  end
end
