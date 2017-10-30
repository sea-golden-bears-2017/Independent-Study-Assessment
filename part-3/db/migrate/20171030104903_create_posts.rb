class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title, null: false
      t.string :description, null: false
      t.string :condition, null: false
      t.datetime :start, null: false
      t.datetime :end, null: false
      t.string :price

      t.timestamps
    end
  end
end
