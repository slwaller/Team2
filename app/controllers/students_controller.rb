class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create student_params
    redirect_to root_path
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
    @student = Student.find params[:id]
    @student.update_attributes student_params
    redirect_to root_path
  end 

  def show
    @student = Student.find params[:id]
  end

  def destroy
    @student = Student.find params[:id]
    @student.delete
    redirect_to root_path
  end



private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :bio, :github)
  end
end
