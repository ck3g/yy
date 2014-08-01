module Yy
  class Comment < ActiveRecord::Base
    belongs_to :user, class_name: Yy.user_class
    belongs_to :topic

    validates :topic, :user, :content, presence: true
  end
end
