# frozen_string_literal: true

module Auth
  class OmniauthController < ApplicationController
    def callback
      auth = request.env['omniauth.auth']
      # pp auth
      session[:auth] = { uid: auth[:uid], provider: auth[:provider], **auth[:info] }

      redirect_to :root
    end

    def logout
      reset_session

      redirect_to :root
    end
  end
end
