class Meeting < ActiveRecord::Base
  attr_accessible :id, :racecourse_id, :event, :date

  belongs_to :racecourse

  scope :sorted, order('date asc')

end
