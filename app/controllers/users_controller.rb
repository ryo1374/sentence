class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @texts = current_user.texts
  end
end
