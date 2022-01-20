require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do  #Homeページのテスト。
    get static_pages_home_url  #GETリクエストをhomeアクションに対して発行 (=送信) せよ。
    assert_response :success  #そうすれば、リクエストに対するレスポンスは[成功]になるはず
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do  #Helpページのテスト。
    get static_pages_help_url  #GETリクエストをhomeアクションに対して発行 (=送信) せよ。
    assert_response :success  #そうすれば、リクエストに対するレスポンスは[成功]になるはず
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should et about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
