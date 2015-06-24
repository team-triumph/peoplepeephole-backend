require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post must have an owner" do
    post = Post.new
    refute post.save, "Tried to save a post without an id"
  end

  test "confirm the owner of a post" do
    post = posts(:post1)
    assert_equal post.user, users(:philip)
  end

end
