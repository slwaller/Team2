class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = User.all

    respond_to do |format|
      format.json { render json: @User.as_json }
    end

  end

  def new
    @student = User.new
  end

  def create
    @user = User.create student_params
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes user_params

    respond_to do |format|
      format.json { render json: @user.as_json }
    end
    redirect_to users_path
  end 

  def show
    @student = User.find params[:id]
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.delete

    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

  def enable
    @user = User.find params[:id]
    @user.enable!
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
    redirect_to students_path
  end


  def disable
    @user = User.find params[:id]
    @user.disable!
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end


  def dnd
    @user = User.find params[:id]
    @user.dnd!
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :bio, :github, :email)
  end
end
