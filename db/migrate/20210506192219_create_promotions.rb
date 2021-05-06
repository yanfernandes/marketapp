class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.string :kind
      t.integer :base
      t.integer :value

      t.timestamps
    end
  end
end
