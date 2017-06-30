class Api::UsersController < Api::ApplicationController
	def current
		render :json => current_api_user
	end

  def update
  	if current_api_user.update(user_params)
      data = { status: 1, user: current_api_user }
    else
      data = { status: 0, errors: current_api_user.errors }
    end
    render json: data.to_json
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:name, :email)
  end
end
