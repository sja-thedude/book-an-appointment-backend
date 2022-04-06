class UsersController < ApplicationController
  # before_action :set_user, only: %i[show update destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  def authenticate
    vaild = User.find_by(email: params[:email]).valid_password(password: params[:password])
    @user.api_token = Devise.friendly_token.to_s
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end
end
