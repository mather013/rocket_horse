class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.sorted
  end

end
