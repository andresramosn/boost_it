class AddUsernameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :invite_url, :string
  end
end
