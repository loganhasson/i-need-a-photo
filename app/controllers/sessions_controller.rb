class SessionsController < ApplicationController

  def callback
    @user = User.find_or_create_by(provider: auth_hash.provider, uid: auth_hash.uid)
    @user.update(name: auth_hash.info.name, info: auth_hash.info.to_hash)
    self.sign_in(@user)
    redirect_to @user
  end

  def destroy
    sign_out
    redirect_to '/'
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end

end
