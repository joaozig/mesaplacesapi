class Api::RatingsController < ApplicationController
  def add
    rating = Rating.new(rating_params)
    rating.user = current_api_user

    if rating.save
      data = { status: 1, rating: rating }
    else
      data = { status: 0, errors: rating.errors }
    end

    render :json => data.to_json(:include => [ :user ])
  end

  private

  def rating_params
    params.fetch(:rating, {}).permit(:grade, :comments, :place_id)
  end
end
