class QoutesController < ApplicationController

  def index
    @qoutes = Qoute.order("created_at ASC")
  end

  def favorites
    @qoutes = Qoute.where(:favorites => true)
  end

  def random_qoutes
    @qoute = Qoute.all.sample
  end 
  def show
    @qoute = Qoute.find(params[:id])
  end

  def new
    @qoute =  Qoute.new
  end

  def create
    @qoute =  Qoute.new(qoute_params)

    if @qoute.save
    redirect_to qoutes_path
    else
      render :new
    end
  end

  def edit
    @qoute = Qoute.find(params[:id])
  end

  def update
    @qoute = Qoute.find(params[:id])
    if @qoute.update(qoute_params)
      redirect_to qoutes_path
    else
      render :edit
    end
  end

  def add_favorites
    @qoute = Qoute.find(params[:id])
    favorites = params[:favorites] == '1' ? false : true
    puts favorites
    @qoute.update_attribute(:favorites, favorites)
    redirect_to '/qoutes'
  end

  def remove_favorites
    @qoute = Qoute.find(params[:id])
    if @qoute.update_attribute(:favorites, false)
      redirect_to '/qoutes/favorites'
    end
  end

  def delete
    @qoute = Qoute.find(params[:id])
    @qoute.destroy

    redirect_to root_path
  end

  private

  def qoute_params
    params.require(:qoute).permit(:name, :description)
  end

end
