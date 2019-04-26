require 'test_helper'

class DaftarKursusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daftar_kursus_index_url
    assert_response :success
  end

  test "should get show" do
    get daftar_kursus_show_url
    assert_response :success
  end

  test "should get edit" do
    get daftar_kursus_edit_url
    assert_response :success
  end

  test "should get new" do
    get daftar_kursus_new_url
    assert_response :success
  end

  test "should get _form" do
    get daftar_kursus__form_url
    assert_response :success
  end

end
