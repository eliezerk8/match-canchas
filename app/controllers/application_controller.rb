class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout

  add_flash_types :danger ,:info ,:success ,:warning

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? false : "application"
    # or turn layout off for every devise controller:
    !devise_controller? && "application"
  end
end