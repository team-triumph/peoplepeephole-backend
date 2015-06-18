class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: { post: @posts.as_json(only: [:image, :user_id,
                                               :answer, :complete, ]) }
  end
end
