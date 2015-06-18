class GuessesController < ApplicationController
  def update
    @guess = Guess.new(guess: params[:guess])
    if @guess.save
      render json: { guesses: @guess.as_json(only: [:guess, :point, :user_id, :post_id]) },
        status: :created
    else
      render json: { errors: @guess.errors.full_messages },
        status: :unprocessable_entity
    end
  end
end
