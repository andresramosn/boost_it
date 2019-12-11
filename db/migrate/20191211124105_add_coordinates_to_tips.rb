class AddCoordinatesToTips < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :latitude, :float
    add_column :tips, :longitude, :float
  end
end
