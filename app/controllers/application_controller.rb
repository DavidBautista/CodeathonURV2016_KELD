class ApplicationController < ActionController::Base
  layout Proc.new { |controller| controller.devise_controller? ? 'application' : 'game' }
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :locale
  before_filter :set_gettext_locale


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


  def locale
    params[:locale] || session[:locale] || I18n.default_locale
  end


  def set_gettext_locale
    requested_locale = params[:locale] || session[:locale] || cookies[:locale] ||  request.env['HTTP_ACCEPT_LANGUAGE'] || I18n.default_locale
    locale = FastGettext.set_locale(requested_locale)
    session[:locale] = locale
    I18n.locale = locale # some weird overwriting in action-controller makes this necessary ... see I18nProxy
  end

end
