class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :amount
      t.references :category, null: false, foreign_key: true
      t.references :personality_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
