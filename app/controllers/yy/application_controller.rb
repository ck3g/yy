module Yy
  class ApplicationController < ActionController::Base
    include Rails.application.routes.mounted_helpers

    before_action :push_current_user_into_js

    helper_method :user_resource_name

    def user_resource_name
      User.to_s.underscore.to_sym
    end

    private
    def push_current_user_into_js
      gon.current_user = { id: current_user.try(:id) }
    end
  end
end
