require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "redirection after comment created" do
    @user = FactoryGirl.create(:user)
    sign_in @user
    place = FactoryGirl.create(:place)

    post :create, :place_id => place.id, :user => @user, :comment => {:message=>"test", :rating =>"5_stars"}

    assert_redirected_to place_path(place)
  end

  test "comment added to database" do
    @user = FactoryGirl.create(:user)
    sign_in @user
    place = FactoryGirl.create(:place)

    post :create, :place_id => place.id, :user => @user, :comment => {:message=>"test", :rating =>"5_stars"}

    assert_redirected_to place_path(place)
  end

end
