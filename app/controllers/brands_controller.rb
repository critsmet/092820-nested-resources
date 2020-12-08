class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  #Maybe we could write a show route that displays all of the kombuchas for that brand
  # def show
  #   @brand = Brand.find(params[:id])
  # end
  #But maybe also because the show page would just display a list of kombuchas that belong to this brand, we could consider it an index page for the kombuchas that belong to this brand

  def new
    @brand = Brand.new
    params[:kombuchas].to_i.times do
      @brand.kombuchas.build #@brand.kombuchas.build - we're making an instance of something that would belong to the brand
    end
    render :new
  end

  def create
    @brand = Brand.create(brand_params)
    byebug
  end

  private

  def brand_params
    params.require(:brand).permit(:name, kombuchas_attributes: [:flavor, :brew_time, :notes])
  end

end
