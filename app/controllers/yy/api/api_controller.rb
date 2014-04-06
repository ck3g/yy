module Yy
  class Api::ApiController < ActionController::Metal
    include AbstractController::Callbacks
    include ActionController::Head

    include ActionController::Helpers
    include ActionController::Redirecting
    include ActionController::Rendering
    include ActionController::Renderers::All
    include ActionController::ConditionalGet
    include ActionController::ImplicitRender

    include ActiveSupport::Rescuable
    include ActionController::Rescue

    include ActionController::MimeResponds
    include ActionController::RequestForgeryProtection
    # need for using SSL
    include ActionController::ForceSSL
    # need to build 'params'
    include ActionController::Instrumentation
    # need this for wrap_parameters
    include ActionController::ParamsWrapper
    # include Devise::Controllers::Helpers

    # need make ApiController aware of the routes
    include Rails.application.routes.url_helpers

    # tell controller where to look for templates
    append_view_path "#{Rails.root}/app/views"

    wrap_parameters format: [:json]

    protect_from_forgery

    respond_to :json

    rescue_from ActiveRecord::RecordNotFound do
      respond_to do |format|
        format.any  { head :not_found }
      end
    end
  end
end
