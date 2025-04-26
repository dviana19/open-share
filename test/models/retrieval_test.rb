# == Schema Information
#
# Table name: retrieval
#
#  id                 :integer          not null, primary key
#  ip_address         :string
#  user_agent         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  shared_password_id :integer          not null
#
# Indexes
#
#  index_retrieval_on_shared_password_id  (shared_password_id)
#
# Foreign Keys
#
#  shared_password_id  (shared_password_id => shared_password.id)
#
require 'test_helper'

class RetrievalTest < ActiveSupport::TestCase
  test 'should not save retrieval without shared password' do
    retrieval = Retrieval.new
    assert_not retrieval.save, 'Saved the retrieval without a shared password'
  end
end
