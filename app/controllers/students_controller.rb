class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = Student.all

    respond_to do |format|
      format.json { render json: @students.as_json }
    end

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create student_params
<<<<<<< HEAD
    #redirect_to students_path
=======
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
    redirect_to students_path
>>>>>>> 864eba4e99c947df84f40d37592f7923c41ad5fc
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
    @student = Student.find params[:id]
    @student.update_attributes student_params
<<<<<<< HEAD
    #redirect_to students_path
=======

    respond_to do |format|
      format.json { render json: @student.as_json }
    end
    redirect_to students_path
>>>>>>> 864eba4e99c947df84f40d37592f7923c41ad5fc
  end 

  def show
    @student = Student.find params[:id]
  end

  def destroy
    @student = Student.find params[:id]
    @student.delete
<<<<<<< HEAD
    #redirect_to students_path
=======

    respond_to do |format|
      format.json { render json: @delete.as_json }
    end
    redirect_to students_path
>>>>>>> 864eba4e99c947df84f40d37592f7923c41ad5fc
  end



private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :bio, :github, :email)
  end
end
