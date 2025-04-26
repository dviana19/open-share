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
class SharedPassword < ApplicationRecord
  has_many :retrievals, dependent: :destroy

  attr_accessor :password, :key_pair, :expires_in

  validates :password, presence: true
  validates :expires_in, presence: true, inclusion: { in: %w[1 24 168] }

  before_validation :set_expiration, :set_keys, :set_access_token

  def to_param
    access_token
  end

  def encrypted_password
    Base64.strict_encode64(key_pair.public_encrypt(password, padding))
  end

  def decrypted_password(encrypted_password)
    key = OpenSSL::PKey::RSA.new(private_key)
    key.private_decrypt(Base64.strict_decode64(encrypted_password), padding)
  rescue OpenSSL::PKey::RSAError
    nil
  end

  def expired?
    expires_at < Time.current
  end

  private

  def set_expiration
    self.expires_at = 1.hour.from_now if expires_in == '1'
    self.expires_at = 1.day.from_now if expires_in == '24'
    self.expires_at = 1.week.from_now if expires_in == '168'
  end

  def set_keys
    self.key_pair = OpenSSL::PKey::RSA.new(2048)
    self.private_key = key_pair.to_pem
  end

  def set_access_token
    self.access_token = SecureRandom.urlsafe_base64(16)
  end

  def padding
    OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING
  end
end
