class AddColumnPriceToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :price, :integer
  end
end
