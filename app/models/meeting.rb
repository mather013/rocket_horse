class Meeting < ActiveRecord::Base
  attr_accessible :id, :racecourse_id, :event, :date

  belongs_to :racecourse
  has_many :tips

  scope :sorted, order('date asc')

end
