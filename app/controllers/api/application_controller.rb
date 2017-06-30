class Api::ApplicationController < ApplicationController
  before_action :skip_session

  protected

  def skip_session
  	request.session_options[:skip] = true
  end
end
