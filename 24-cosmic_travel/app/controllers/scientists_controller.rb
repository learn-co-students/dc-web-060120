class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.all

  end

  def show
    @scientist = Scientist.find(params[:id])
  end

  def new
    @scientist = Scientist.new

  end


  def create
    @scientist = Scientist.create(sci_params)
    if @scientist.valid?
        redirect_to scientist_path(@scientist.id)
    else
        render :new
    end
  end

  def edit
    @scientist = Scientist.find(params[:id])
  end

  def update
    @scientist = Scientist.find(params[:id])
    @scientist.update(sci_params)
    if @scientist.valid?
        redirect_to scientist_path(@scientist.id)
    else
        render :edit
    end

  end

  def destroy
    @scientist = Scientist.find(params[:id])
    @scientist.destroy
    redirect_to scientists_path
  end

  private

  def sci_params
    params.require(:scientist).permit(:name, :field_of_study)
  end
end
