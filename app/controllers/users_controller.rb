class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = "#{@user.firstname} #{@user.lastname}"
  end

  def new
    @title = "Sign Up"
  end
end
