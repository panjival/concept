require 'test_helper'

class JenisKursusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jenis_kursus_index_url
    assert_response :success
  end

  test "should get new" do
    get jenis_kursus_new_url
    assert_response :success
  end

  test "should get edit" do
    get jenis_kursus_edit_url
    assert_response :success
  end

  test "should get show" do
    get jenis_kursus_show_url
    assert_response :success
  end

  test "should get _form" do
    get jenis_kursus__form_url
    assert_response :success
  end

end
