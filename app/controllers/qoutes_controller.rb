class QoutesController < ApplicationController
  def index
    @qoutes = Qoute.order("created_at ASC")
  end

  def new
    @qoute = Qoute.new
  end

  def create
    @qoute = Qoute.new(qoutes_params)
    if @qoute.save
      redirect_to '/' 
    else 
      render :new
    end
  end

  private

  def qoutes_params
    params.require(:qoute).permit(:name, :description)
  end
end
