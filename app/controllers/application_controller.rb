class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    render 'shared_passwords/not_found', status: :not_found
  end
end
