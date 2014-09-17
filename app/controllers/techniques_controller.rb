class TechniquesController < ApplicationController
  

  def index
    @technique = Technique.all
  end

  def show
    @technique = Technique.find params[:id]
  end

  def new
    @technique = Technique.new
  end

  def create
    @technique = Technique.create technique_params
    redirect_to techniques_path
  end

  def edit
    @technique = Technique.find params[:id]
  end

  def update
    @technique = Technique.find params[:id]
    @technique.update_attributes technique_params
  end

  def destroy
    @technique = Technique.find params[:id]
    @technique.delete
  end

private
  def technique_params
    params.require(:technique).permit(:technique)
  end

end
