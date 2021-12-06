class RecommendsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :set_recommend, only: [:show, :destroy]
  before_action :move_to_index, only: :destroy

  def index
    @recommends = Recommend.all.order(created_at: :DESC)
  end

  def new
    @recommend = Recommend.new
  end

  def create
    @recommend = Recommend.new(recommend_params)
    if @recommend.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    if @recommend.destroy
      redirect_to root_path
    end
  end

  private

  def recommend_params
    params.require(:recommend).permit(:image, :place_name, :region_id, :city_id, :category_id).merge(user_id: current_user.id)
  end

  def set_recommend
    @recommend = Recommend.find(params[:id])
  end

  def move_to_index
    unless current_user.id == @recommend.user_id
      redirect_to root_path
    end
  end

end
