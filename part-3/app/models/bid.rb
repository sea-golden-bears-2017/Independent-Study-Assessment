class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :bid_amount, presence: true
end
