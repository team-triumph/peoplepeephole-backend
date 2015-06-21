class PostsController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :delete]

  def index
    @post = Post.all
     respond_to { |format|
     format.json { render :json => @post.as_json(:include => { :user => { :only => [:username]}}) }}


  end

  def show
    @post = Post.find(params[:id])

      if @post.save
      # render json "show.json.jbuilder", status: :ok
      render json: { post: @post.as_json(only: [:image, :user_id,
                                              :answer, :answer_1,
                                              :answer_2, :answer_3,
                                              :complete ]) },
          status: :ok
      else
        render json: { errors: @post.errors.full_messages },
          status: :not_found
      end
  end

  def create
    @post = current_user.posts.new(image: params[:image],
                     user_id: current_user.id,
                     answer: params[:answer],
                     answer_1: params[:answer_1],
                     answer_2: params[:answer_2],
                     answer_3: params[:answer_3],
                     complete: params[:complete])
    if @post.save
      # render json "register.json.jbuilder", status: :created
      render json: { post: @post.as_json(only: [:id, :image, :user_id, :answer,
                                                :answer_1, :answer_2,
                                                :answer_3, complete: false]) },
        status: :created
    else
      render json: { errors: @post.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  def delete
    @post = current_user.posts.find_by(id: params[:id])
    if @post
      @post.destroy
      render json: {message: "Post deleted"}
    else
      render json: { message: "User id not found." },
        status: :unauthorized
    end
  end
end
