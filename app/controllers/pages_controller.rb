class PagesController < ApplicationController
  
  def index
    @pages = Pages.all
  end

  def show
    @pages = Pages.find(params[:id])
  end

  def edit
  end

  def update
  end
end
