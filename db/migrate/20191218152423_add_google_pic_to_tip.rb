class AddGooglePicToTip < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :google_pic, :string
  end
end
