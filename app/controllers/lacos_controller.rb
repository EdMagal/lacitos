class LacosController < ApplicationController
  before_action :set_laco, only: [:show, :edit, :update, :destroy]
  def index
    @lacos = Laco.all
  end

  def new
    @laco = Laco.new
  end

  def create
    @laco = Laco.new(laco_params)
    @laco.save
    redirect_to laco_path(@laco)
  end

  def show
  end

  private

  def set_laco
    @laco = Laco.find(params[:id])
  end

  def laco_params
    params.require(:laco).permit(:name, :price, :description, :quantity, :photo)
  end
end
