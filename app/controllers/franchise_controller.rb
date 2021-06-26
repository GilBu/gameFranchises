class FranchiseController < ApplicationController
  def index
  end

  def search
  countries = find_franchise(params[:franchise])
  unless franchises
    flash[:alert] = 'Franchise not found'
    return render action: :index
  end
end