class AddPhotoToTips < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :photo, :string
  end
end
