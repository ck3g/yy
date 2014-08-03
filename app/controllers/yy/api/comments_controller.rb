require_dependency "yy/application_controller"

module Yy
  class Api::CommentsController < ApplicationController
    respond_to :json
    before_action :find_topic

    def index
      @comments = @topic.comments.order(:created_at)
    end

    def create
      comment = @topic.comments.new safe_params
      comment.user = current_user
      comment.save
      respond_with comment, location: ''
    end

    private
    def safe_params
      params.require(:comment).permit(:content)
    end

    def find_topic
      @topic = Topic.friendly.find params[:topic_id]
    end
  end
end
