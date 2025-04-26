class SharedPasswordsController < ApplicationController
  before_action :set_shared_password, only: %i[ show ]

  # GET /shared_passwords/1
  def show
  end

  # GET /shared_passwords/new
  def new
    @shared_password = SharedPassword.new
  end

  # POST /shared_passwords
  def create
    @shared_password = SharedPassword.new(shared_password_params)

    if @shared_password.save
      respond_to do |format|
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_password
      @shared_password = SharedPassword.find_by!(access_token: params.expect(:access_token))
    end

    # Only allow a list of trusted parameters through.
    def shared_password_params
      params.expect(shared_password: [:password, :expires_in])
    end
end
