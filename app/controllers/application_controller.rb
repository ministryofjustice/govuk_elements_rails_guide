class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    render 'home'
  end

  def form_elements
    render 'form_elements'
  end

  def error_validation
    render 'error_validation'
  end
end
