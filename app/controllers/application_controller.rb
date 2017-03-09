class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def redirect_to_committee
    redirect_to committee_path
  end
end
