require 'test_helper'

class MeControllerTest < ActionDispatch::IntegrationTest
  test 'should get about' do
    get me_about_url
    assert_response :success
  end

  test 'should get contact' do
    get me_contact_url
    assert_response :success
  end
end
