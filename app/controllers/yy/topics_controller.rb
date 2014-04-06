require_dependency "yy/application_controller"

module Yy
  class TopicsController < ApplicationController

    respond_to :html, :json

    def index
      @topics = Topic.all
      respond_with @topics
    end
  end
end
