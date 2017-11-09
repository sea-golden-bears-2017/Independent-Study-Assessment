class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :user
      t.belongs_to :auction
      t.decimal :bid_amount, null: false #Read is good to use decimal for monetary value. Thoughts?

      t.timestamps
    end
  end
end
