require_dependency "yy/application_controller"

module Yy
  class Api::TopicsController < ApplicationController
    respond_to :json

    def index
      topics = Topic.all
      respond_with topics
    end

    def create
      topic = Topic.new safe_params
      topic.user = current_user
      topic.save
      respond_with topic, location: ''
    end

    private
    def safe_params
      params.require(:topic).permit(:title, :content, :category_id)
    end
  end
end
