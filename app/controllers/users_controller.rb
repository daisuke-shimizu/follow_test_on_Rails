class UsersController < ApplicationController
  # ログインしていないユーザーの侵入を阻止
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
end
