class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.integer :rating
      t.text :review
      t.string :category
      t.string :title
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
