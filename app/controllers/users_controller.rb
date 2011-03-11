class UsersController < ApplicationController
  def new
    @title = "Sign Up"
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created account!"
      redirect_to scorecard_url
    else
      render :action => "new"
    end
  end
end
