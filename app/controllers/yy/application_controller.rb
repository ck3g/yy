module Yy
  class ApplicationController < ActionController::Base
    include Rails.application.routes.mounted_helpers

    helper_method :user_resource_name

    def user_resource_name
      User.to_s.underscore.to_sym
    end
  end
end
