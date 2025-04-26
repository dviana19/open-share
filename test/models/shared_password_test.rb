# == Schema Information
#
# Table name: shared_password
#
#  id           :integer          not null, primary key
#  access_token :string           not null
#  expires_at   :datetime         not null
#  private_key  :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class SharedPasswordTest < ActiveSupport::TestCase
  test 'should encrypt/decrypt password' do
    shared_password = SharedPassword.create(password: 'password', expires_in: '1')
    assert_equal 'password', shared_password.decrypted_password(shared_password.encrypted_password)
  end
end
