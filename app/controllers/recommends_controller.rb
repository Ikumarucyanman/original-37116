class RecommendsController < ApplicationController

  def index
    @recommends = Recommend.all
  end

  def new
    @recommend = Recommend.new
  end

end
