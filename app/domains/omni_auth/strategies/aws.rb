# frozen_string_literal: true

module OmniAuth
  module Strategies
    class Aws < OmniAuth::Strategies::OAuth2
      option :client_options, {
        authorize_url: '/oauth2/authorize',
        token_url: '/oauth2/token'
      }

      def query_string
        ''
      end

      # match /auth/:provider/logout
      # def other_phase
      #   return call_app! unless current_path == File.join(path_prefix, name.to_s, 'logout')

      #   post_logout_redirect_url = URI.join(full_host, path_prefix, 'logout').to_s
      #   logout_url = File.join(options.client_options.site, 'logout')
      #   logout_query = URI.encode_www_form(logout_uri: post_logout_redirect_url, client_id: options.client_id)
      #   redirect("#{logout_url}?#{logout_query}")
      # end

      uid do
        raw_info['sub']
      end

      info do
        {
          email: raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= ::JWT.decode(access_token['id_token'], nil, false).first
      end
    end
  end
end
