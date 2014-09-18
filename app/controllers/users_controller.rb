class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users.as_json }
    end
  end

  def new
    @user = User.new
  end


  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    respond_to do |format|
      format.json { render json: @user.as_json }
    end
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
  end



  def show
    @user = User.find params[:id]
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


    params.require(:user).permit(:first_name, :last_name, :bio, :github, :email, :strengths, :weakness)


    params.require(:user).permit(:first_name, :last_name, :bio, :github, :email, :strengths, :weakness)

  end
end
