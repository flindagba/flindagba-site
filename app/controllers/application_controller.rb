class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  http_basic_authenticate_with name: "admin", password: ENV["HTTP_PASSWORD"]
end
