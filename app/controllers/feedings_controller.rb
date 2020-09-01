class FeedingsController < ApplicationController
  def index
    @feedings = Feeding.all
    render json: @feedings, status: :ok
  end
end