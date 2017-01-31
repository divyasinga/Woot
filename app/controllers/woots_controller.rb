class WootsController < ApplicationController
  def login
  end

  def login_user
    @user = User.find_by_email params[:email]
    # render json: [@user.errors.messages]

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to '/'
    end
  end


  def create
    @user = User.create name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:confirm_pw]
    # render json: [user.errors.messages]
    if @user.save
      redirect_to '/dashboard'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end

  end

  # def dashboard
  #
  # end

  def register
  end
end
