class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home; end

  def form_elements; end
end
