module HttpAuthConcern
  extend ActiveSupport::Concern

  included do
    before_action :basic_auth
  end

  def basic_auth
    return true if Rails.env.test? || Rails.env.dev?
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASS']
    end
  end
end
