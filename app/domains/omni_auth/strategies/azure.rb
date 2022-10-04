# frozen_string_literal: true

module OmniAuth
  module Strategies
    class Azure < OmniAuth::Strategies::OAuth2
      def client
        base_url = "https://#{options.tenant}.b2clogin.com/#{options.tenant}.onmicrosoft.com/#{options.policy}/oauth2/v2.0"

        options.client_options.authorize_url = File.join(base_url, 'authorize')
        options.client_options.token_url = File.join(base_url, 'token')

        super
      end

      uid do
        raw_info['sub']
      end

      info do
        {
          email: raw_info['emails'].first
        }
      end

      def raw_info
        @raw_info ||= ::JWT.decode(access_token.token, nil, false).first
      end
    end
  end
end
