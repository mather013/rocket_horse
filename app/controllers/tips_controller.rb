class TipsController < ApplicationController

  def index
    @meeting = Meeting.find(params['meeting_id'])
    @tips = @meeting.tips
  end

end
