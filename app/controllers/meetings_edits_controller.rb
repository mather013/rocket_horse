class MeetingsEditsController < ApplicationController

  def index
    @meetings = Meeting.sorted
  end

end
