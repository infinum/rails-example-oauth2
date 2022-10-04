class MyLoggingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    pp "BEFORE"
    response = @app.call(env)
    pp "AFTER"
    response
  end
end

Rails.application.config.middleware.insert_after Rails::Rack::Logger, MyLoggingMiddleware
