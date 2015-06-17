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
end
