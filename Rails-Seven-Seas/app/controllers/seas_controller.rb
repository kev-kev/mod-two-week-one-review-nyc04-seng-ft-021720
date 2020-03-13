class SeasController < ApplicationController
  #define your controller actions here

  def welcome
  end
  
  def index
    # @seas = [{name: "kevin"},{name: "ben"}]
    @seas = Sea.all
  end

  def new
    @sea = Sea.create
  end

  def edit 
    @sea = Sea.create(sea_params)
  end
  
  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    redirect_to :action => "index"
  end



  def show
    @sea = Sea.find(params[:id])
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end



end
