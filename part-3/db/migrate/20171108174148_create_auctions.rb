class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|

     t.string :name, null: false
     t.string :condition, null: false
     t.string :description, null: false 
     t.datetime :start, null: false
     t.datetime :end, null: false
     t.belongs_to :user, null: false

     t.timestamps
    end
  end
end
