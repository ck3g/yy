require_dependency "yy/application_controller"

module Yy
  class Api::CommentsController < ApplicationController
    respond_to :json

    def create
      topic = Topic.friendly.find params[:topic_id]
      comment = topic.comments.new safe_params
      comment.user = current_user
      comment.save
      respond_with comment, location: ''
    end

    private
    def safe_params
      params.require(:comment).permit(:content)
    end
  end
end
