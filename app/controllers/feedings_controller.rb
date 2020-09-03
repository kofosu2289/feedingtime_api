class FeedingsController < ApplicationController
  def index
    @feedings = Feeding.order("created_at DESC").limit(4)
    render json: @feedings, status: :ok
  end

  def create
    @feeding = Feeding.new(feeding_params)
    if @feeding.save
      render json: @feeding, status: :created
    else
      render json: {errors: @feeding.errors}, status: :unprocessable_entity
    end
  end

  private

  def feeding_params
    params.require(:feeding).permit(:food, :datetime)
  end
end