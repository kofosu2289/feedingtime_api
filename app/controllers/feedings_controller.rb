class FeedingsController < ApplicationController
  def index
    @feedings = Feeding.all
    render json: @feedings, status: :ok
  end

  private

  def feeding_params
    params.require(:feeding).permit(:food, :datetime)
  end
end