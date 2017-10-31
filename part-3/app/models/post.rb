class Post < ActiveRecord::Base
 belongs_to :user
 has_many :bids

 validates :title, :description, presence: true
end
