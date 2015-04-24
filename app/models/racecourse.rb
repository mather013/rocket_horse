class Racecourse < ActiveRecord::Base
  attr_accessible :id, :name

  has_many :meetings

end
