class CollectionsController < ApplicationController

  def index
    if current_user.nil?
      redirect_to '/'
    else
      current_user
      @collection = Collection.all
      render :index
    end
  end

  def thing
    @thing = session[:thing]
    render :thing
  end

end
