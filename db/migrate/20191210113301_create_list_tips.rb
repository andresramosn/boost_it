class CreateListTips < ActiveRecord::Migration[5.2]
  def change
    create_table :list_tips do |t|
      t.references :tip, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
