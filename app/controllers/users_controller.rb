class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
<<<<<<< HEAD
    @users = User.all

    respond_to do |format|
      format.json { render json: @users.as_json }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
=======
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
>>>>>>> 7bd1ea0b898b830b25bf0ecff9f009a080e3740e
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes user_params
<<<<<<< HEAD
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

  def show
    @user = User.find params[:id]
=======

    respond_to do |format|
      format.json { render json: @user.as_json }
    end
    redirect_to users_path
  end 

  def show
    @student = User.find params[:id]
>>>>>>> 7bd1ea0b898b830b25bf0ecff9f009a080e3740e
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.delete
<<<<<<< HEAD
=======

>>>>>>> 7bd1ea0b898b830b25bf0ecff9f009a080e3740e
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
<<<<<<< HEAD
=======
    redirect_to students_path
>>>>>>> 7bd1ea0b898b830b25bf0ecff9f009a080e3740e
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
<<<<<<< HEAD
    params.require(:user).permit(:first_name, :last_name, :bio, :github, :email, :strengths, :weakness)
=======
    params.require(:user).permit(:first_name, :last_name, :bio, :github, :email)
>>>>>>> 7bd1ea0b898b830b25bf0ecff9f009a080e3740e
  end
end
