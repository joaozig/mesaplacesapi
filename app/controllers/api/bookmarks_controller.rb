class Api::BookmarksController < ApplicationController
	def index
    bookmarks = Bookmark.where(user: current_user).order(created_at: :desc).all
		render :json => bookmarks.to_json(
      :include => {
        :place => {
          :include => {
            :ratings => {
              :include => [ :user ]
            }
          }
        }
      }
    )
	end

  def add
    params = place_params
    place = Place.where({ identifier: params[:id] }).first

  	if place.nil?
      place = Place.new({identifier: params[:id], name: params[:name], vicinity: params[:vicinity]})
    end

    bookmark = Bookmark.new({place: place, user: current_user})
    if bookmark.save
      data = { status: 1, bookmark: bookmark }
    else
      data = { status: 0, errors: bookmark.errors }
    end

    render :json => data.to_json(:include => [ :place ])
  end

  private

  def place_params
    params.fetch(:place, {}).permit(:id, :name, :vicinity)
  end
end
