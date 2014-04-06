require_dependency "yy/application_controller"

module Yy
  class Api::TopicsController < ApplicationController
    respond_to :json

    def index
      topics = Topic.all
      respond_with topics
    end
  end
end
