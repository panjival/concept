require 'test_helper'

class MuridsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get murids_index_url
    assert_response :success
  end

  test "should get new" do
    get murids_new_url
    assert_response :success
  end

  test "should get show" do
    get murids_show_url
    assert_response :success
  end

  test "should get edit" do
    get murids_edit_url
    assert_response :success
  end

end
