require 'test_helper'

class GuessTest < ActiveSupport::TestCase

  test "guess isn't blank" do
    guess = guesses(:thing)
    assert guess.save
  end

  test "guess format is correct" do
    guess = guesses(:thing)
    assert guess.save
  end

end
