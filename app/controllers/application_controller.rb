class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :all_categories
  

  protect_from_forgery with: :exception
  def all_categories
    @category = Category.all
  end
end
