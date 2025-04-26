require 'test_helper'

class SharedPasswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_password = shared_password(:shared_password_one)
  end

  test 'should create shared_password' do
    assert_difference 'SharedPassword.count' do
      post shared_passwords_url, params: { shared_password: { password: 'password', expires_in: '168' } }
    end

    assert_equal Date.today + 1.week, SharedPassword.last.expires_at.to_date
  end

  test 'should not create shared_password with invalid password' do
    assert_no_difference 'SharedPassword.count' do
      post shared_passwords_url, params: { shared_password: { password: '', expires_in: '1' } }
    end
  end

  test 'should not create shared_password with invalid expires_in' do
    assert_no_difference 'SharedPassword.count' do
      post shared_passwords_url, params: { shared_password: { password: 'password', expires_in: 'invalid' } }
    end
  end

  test 'should show shared_password' do
    get shared_password_url(@shared_password)
    assert_response :success
  end

  test 'should not show shared_password with invalid access_token' do
    get shared_password_url('invalid')
    assert_response :not_found
  end
end
