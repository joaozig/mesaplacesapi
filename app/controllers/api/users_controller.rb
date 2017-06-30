class Api::UsersController < ApplicationController
	def current
		render :json => current_user
	end

  def update
  	if current_user.update(user_params)
      data = { status: 1, user: current_user }
    else
      data = { status: 0, errors: current_user.errors }
    end
    render json: data.to_json
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:name, :email)
  end
end
