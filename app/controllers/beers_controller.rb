class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.create(beer_params)
    if @beer.save
      redirect_to(beers_path)
    else
      render :new
    end
  end

  def update
    Beer.find(params[:id]).update(beer_params)
    redirect_to(beers_path)
  end

  def destroy
    Beer.find(params[:id]).destroy
    redirect_to(beers_path)
  end

  private

    def beer_params
      params.require(:beer).permit(:name, :description, :brewery)
    end

end
