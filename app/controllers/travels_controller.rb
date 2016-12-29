class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def index
    @travels = Travel.all
  end

  def show
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new
    @travel.from = From.find(travel_params[:from_id])
    @travel.to = To.find(travel_params[:to_id])
    @travel.user = current_user
    if @travel.save
      redirect_to @travel
    else
      render 'new'
    end
  end

  private
  def travel_params
    params.require(:travel).permit(:from_id, :to_id)
  end

  def set_travel
    @travel = Travel.find(params[:id])
  end
end
