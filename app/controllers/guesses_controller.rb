class GuessesController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @guess = current_user.guesses.new(guess: params[:guess],
                                      post_id: @post)
    if @guess.save
      render json: { guesses: @guess.as_json(only: [:guess, :point, :user_id, :post_id]) },
        status: :created
    else
      render json: { errors: @guess.errors.full_messages },
        status: :unprocessable_entity
    end
  end
end
