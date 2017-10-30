class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.string :description, null: false
      t.string :condition, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
