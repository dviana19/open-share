module SharedPasswordsHelper
  def sharable_url(shared_password)
    shared_password_url(shared_password, e: shared_password.encrypted_password)
  end
end
