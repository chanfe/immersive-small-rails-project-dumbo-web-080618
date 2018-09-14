class CollectionsController < ApplicationController

  def index
    if current_user.nil?
      redirect_to '/'
    else
      current_user
      @collection = Collection.all
    end
  end
end
