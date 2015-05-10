class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.sorted
  end

  def edit
    @meeting = Meeting.find(params[:id])
    @racecourses = Racecourse.all.collect {|a| [a.name, a.id]}
  end

  def update
    meeting = Meeting.find(params[:id])
    meeting.update_attributes(params[:meeting])

    respond_to do |format|
      format.html { redirect_to meetings_path }
      format.json { head :no_content }
    end
  end

  def new
    @meeting = Meeting.new(date:Date.today)
    @racecourses = Racecourse.all.collect {|a| [a.name, a.id]}
  end

  def create
    @meeting = Meeting.new(params[:meeting])

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to meetings_path, notice: 'Meeting successfully created.' }
        format.json { render json: @meeting, status: :created, location: @meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
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
