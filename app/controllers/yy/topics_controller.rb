require_dependency "yy/application_controller"

module Yy
  class TopicsController < ApplicationController

    def index
      @topics = Topic.all
    end
  end
end
