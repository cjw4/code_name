class UsersController < ApplicationController
  def new
    @title = "Sign Up"
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You've created a playElver account successfully"
      redirect_to({:controller => "scorecards", :action => "index" })
    else
      render :action => "new"
    end
  end
end
