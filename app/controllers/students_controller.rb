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
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
    redirect_to students_path
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
    @student = Student.find params[:id]
    @student.update_attributes student_params

    respond_to do |format|
      format.json { render json: @student.as_json }
    end
    redirect_to students_path
  end 

  def show
    @student = Student.find params[:id]
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
  end

  def destroy
    @student = Student.find params[:id]
    @student.delete

    respond_to do |format|
      format.json { render json: @student.as_json }
    end
  end

  def enable
    @student = Student.find params[:id]
    @student.enable!
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
    redirect_to students_path
  end


  def disable
    @student = Student.find params[:id]
    @student.disable!
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
  end


  def dnd
    @student = Student.find params[:id]
    @student.dnd!
    respond_to do |format|
      format.json { render json: @student.as_json }
    end
  end

private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :bio, :github, :email)
  end
end
