class AddPhotosToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :photos, :string
  end
end
