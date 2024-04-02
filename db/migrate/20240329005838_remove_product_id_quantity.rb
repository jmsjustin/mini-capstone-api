class RemoveProductIdQuantity < ActiveRecord::Migration[7.1]
  def change
    remove_column :product_id, :quantity
  end
end
