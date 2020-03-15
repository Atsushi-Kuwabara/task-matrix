class UsersController < ApplicationController
  def show
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
  end
  
end
