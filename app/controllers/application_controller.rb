class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Rack::Recaptcha::Helpers

  def redirect_to_committee
    redirect_to committee_path
  end
end
