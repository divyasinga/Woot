class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      # t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :products, :categories, column: :category_id
  
  end
end
