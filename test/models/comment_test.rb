require 'test_helper'

class CommentTest < ActiveSupport::TestCase

# Error, need to create user

  test "humanized rating" do
    user = FactoryGirl.create(:user)
    comment = FactoryGirl.create(:comment)
    expected ="one star"
    actual = comment.humanized_rating
    assert_equal expected, actual
  end

end
