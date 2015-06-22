class GuessesController < ApplicationController
  before_action :authenticate_with_token!, only: [:create]

  def create
    @post = Post.find(params[:id])
    @guess = current_user.guesses.new(guess: params[:guess],
                                      post_id: @post.id
                                      )
    if @guess.guess == @post.answer
      @guess.point = 1
      @post.complete = true
      @post.save
      @guess.save
      render json: { guesses: @guess.as_json(include: { user: { only: [:username, :access_token] } } )},
        status: :created
    elsif @guess.guess != @post.answer
      @guess.point = 0
      @post.complete = true
      @post.save
      @guess.save
      render json: { guesses: @guess.as_json(include: { user: { only: [:username, :access_token] } } )},
        status: :created
    else
      render json: { errors: @guess.errors.full_messages },
        status: :unprocessable_entity
    end
  end
end
