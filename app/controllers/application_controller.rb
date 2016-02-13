class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def after_sign_in_path_for(resource)
    root_path
  end


  protected


  def permission_denied
    render file:'public/401.html', status: :unauthorized, layout: false
  end

  def bad_request
    render file:'public/400.html', status: :bad_request, layout: false
  end

end
