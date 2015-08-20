class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      user.generate_token
      render json: user.to_json(except: [:password_digest, :created_at, :updated_at])
    else
      render json: { error: 'Username & Password mismatch' }, status: 401
    end

  end


  def destroy

  end

end
