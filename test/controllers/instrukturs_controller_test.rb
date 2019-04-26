require 'test_helper'

class InstruktursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instrukturs_index_url
    assert_response :success
  end

  test "should get new" do
    get instrukturs_new_url
    assert_response :success
  end

  test "should get show" do
    get instrukturs_show_url
    assert_response :success
  end

  test "should get edit" do
    get instrukturs_edit_url
    assert_response :success
  end

  test "should get _form" do
    get instrukturs__form_url
    assert_response :success
  end

end
