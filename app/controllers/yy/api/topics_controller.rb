require_dependency "yy/application_controller"

module Yy
  class Api::TopicsController < Api::ApiController
    def index
      topics = Topic.all
      respond_with topics
    end
  end
end
