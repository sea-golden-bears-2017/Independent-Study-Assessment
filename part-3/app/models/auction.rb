class Auction < ActiveRecord::Base
  belongs_to :user
  validates :name, :condition, :description, :start, :end, presence: true
end
