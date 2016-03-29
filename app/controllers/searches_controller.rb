class SearchesController < ApplicationController
  def new
    @search = Search.new
  end
  
  def create
    @search = Search.create!(create_params)
    redirect_to @search
  end
  
  def show
    Rails.logger.info search_params.inspect
    @search = Search.find(search_params[:id])
  end
  private
  def search_params
    params.permit(:search,:id)
  end

  def create_params
    params.require(:search).permit(:keywords,:category_id,:min_price,:max_price)
  end
end
