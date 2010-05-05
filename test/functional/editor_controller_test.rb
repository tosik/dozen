require 'test_helper'

class EditorControllerTest < ActionController::TestCase
  test "add" do
    post :add,
      :description => "This is description",
      :term => DateTime.now
    assert_response :success
  end
end
