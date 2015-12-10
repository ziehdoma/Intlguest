class StudentprofileController < ApplicationController

def show
    @studentProfile = current_student.studentprofile.find_by(:student_id => params[:student_id])
    # User.find_by(:username => params[:username])
  end

  def new
    @studentProfile = Studentprofile.new
  end

  def create
  	# @design = current_user.designs.new(design_params)
    @studentProfile = current_student.studentprofiles.new(student_params)
    if @studentProfile.save
      log_in @studentProfile
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @studentProfile
    else
      render 'new'
    end
  end

  def edit
    @studentProfile = Studentprofile.find(params[:id])
  end

  private

    def student_params
      params.require(:studentprofile).permit(:student_id,:name, :bio, :school, :language, :smoker).merge(student: current_student)
    end
end
