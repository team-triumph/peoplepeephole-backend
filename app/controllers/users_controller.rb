class UsersController < ApplicationController
  def register
    passhash = Digest::SHA1.hexdigest(params[:password])
    @user = User.new(email: params[:email],
                     password: passhash,
                     first_name: params[:first_name],
                     last_name: params[:last_name],
                     username: params[:username])
    if @user.save
      # render json "register.json.jbuilder", status: :created
      render json: { user: @user.as_json(only: [:id, :email, :access_token,
                                                :first_name, :last_name,
                                                :username]) },
        status: :created
    else
      render json: { errors: @user.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  def login
    passhash = Digest::SHA1.hexdigest(params[:password])
    @user = User.find_by(email: params[:email],
                     password: passhash,
                     username: params[:username])
    if @user.save
      # render json "login.json.jbuilder", status: :ok
      render json: { user: @user.as_json(only: [:id, :email, :access_token,
                                                :first_name, :last_name,
                                                :username]) },
        status: :ok
    else
      render json: { errors: @user.errors.full_messages },
        status: :not_found
    end
  end

  def scoreboard
    binding.pry
    @user = User.all
    @user.guesses.map(&:point).sum
  end
end
