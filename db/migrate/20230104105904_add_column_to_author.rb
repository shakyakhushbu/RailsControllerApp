class AddColumnToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :desc, :string
  end
end
