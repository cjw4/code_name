class ScorecardsController < ApplicationController
  
  def index
    @scorecard = Scorecard.new
    @scorecards = Scorecard.all
    
    if params[:id].present?
      @scorecard_show = Scorecard.find(params[:id])
    end
  
  end
  
  
  def show
      @show_scorecard = Scorecard.find(params[:id])
      redirect_to(:action => "index", :id => @show_scorecard)
  end
  
  def destroy
    @scorecard = Scorecard.find(params[:id])
    
    if @scorecard.destroy
      redirect_to(:action => "index")
    end
  end

  def create
    @scorecard = Scorecard.new(params[:scorecard])
    
    if @scorecard.save
      redirect_to(:action => "index")
    else
      redirect_to(:action => "new")
    end
  end
end
