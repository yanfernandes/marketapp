class AddColumnTotalToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :total, :decimal
  end
end
