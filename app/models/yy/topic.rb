module Yy
  class Topic < ActiveRecord::Base
    belongs_to :user, class_name: Yy.user_class
    belongs_to :category

    validates :title, presence: true, length: { minimum: 10 }
    validates :content, :user_id, presence: true
  end
end
