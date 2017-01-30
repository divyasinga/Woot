class WootsController < ApplicationController
  def login
  end

  def login_user

  end


  def create
    User.create name:params[:name], email:params[:email], password:params[:password]
    redirect_to '/dashboard'
  end

  # def dashboard
  #
  # end

  def register
  end
end
