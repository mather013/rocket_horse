class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.sorted
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    meeting = Meeting.find(params[:id])
    meeting.update_attributes(params[:meeting])

    respond_to do |format|
      format.html { redirect_to meetings_path }
      format.json { head :no_content }
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to meetings_path }
      format.json { head :no_content }
    end
  end

end
