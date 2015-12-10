class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      log_in @student
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  private

    def student_params
      params.require(:student).permit(:id,:name, :bio, :school, :language, :smoker)
    end
end