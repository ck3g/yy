require_dependency "yy/application_controller"

module Yy
  class Api::TopicsController < ApplicationController
    respond_to :json

    def index
      topics = Topic.all
      respond_with topics
    end

    def create
      respond_with Topic.create(safe_params), location: ''
    end

    private
    def safe_params
      params.require(:topic).permit(:title, :content)
    end
  end
end
