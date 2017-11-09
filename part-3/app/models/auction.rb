class Auction < ActiveRecord::Base
  belongs_to :user
  validates :name, :condition, :description, :start, :end, presence: true



  def end_time
    self.end.strftime('%A %b %d %Y %l:%M %P %Z')
  end


  def start_time
    self.start.strftime('%A %b %d %Y %l:%M %P %Z')
  end

  def has_not_started?
    self.start.future?
  end

  def has_ended?
    self.end.past?
  end
end
