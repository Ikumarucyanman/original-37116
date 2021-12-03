class RecommendsController < ApplicationController

  def index
    @recommends = Recommend.all.order(created_at: :DESC)
  end

  def new
    @recommend = Recommend.new
  end

end
