class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @recommends = current_user.recommends
  end
  
end
