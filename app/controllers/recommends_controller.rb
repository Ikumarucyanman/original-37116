class RecommendsController < ApplicationController

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

  private

  def recommend_params
    params.require(:recommend).permit(:image, :place_name, :region_id, :city_id, :category_id)
  end

end
