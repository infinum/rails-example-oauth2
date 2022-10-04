# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :aws,
           client_id: Figaro.env.aws_client_id,
           client_secret: Figaro.env.aws_client_secret,
           client_options: { site: 'https://rails-project-pool.auth.eu-west-1.amazoncognito.com' }

  provider :azure,
           client_id: Figaro.env.azure_client_id,
           client_secret: Figaro.env.azure_client_secret,
           tenant: 'alcodemist',
           policy: 'B2C_1_rails_signinup3',
           scope: 'openid'

end

OmniAuth.config.logger = Rails.logger
