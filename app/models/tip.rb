class Tip < ActiveRecord::Base
  attr_accessible :id, :meeting_id, :race_time, :horse_name, :odds, :information

  belongs_to :meeting

end
