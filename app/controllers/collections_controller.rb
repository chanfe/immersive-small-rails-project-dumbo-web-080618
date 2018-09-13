class CollectionsController < ApplicationController

  def index
    current_user
    @collection = Collection.all
  end

end
