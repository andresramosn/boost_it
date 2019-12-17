class AddAttributesToTip < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :opening_hours, :string
    add_column :tips, :price_level, :integer
    add_column :tips, :website, :string
  end
end
