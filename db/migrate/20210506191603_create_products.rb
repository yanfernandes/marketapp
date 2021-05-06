class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.integer :stock
      t.string :barcode
      t.integer :price
      t.string :image_path
      t.references :promotion

      t.timestamps
    end
  end
end
