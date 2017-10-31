class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
