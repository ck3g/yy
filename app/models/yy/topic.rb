module Yy
  class Topic < ActiveRecord::Base
    belongs_to :user

    validates :title, presence: true, length: { minimum: 10 }
    validates :content, :user_id, presence: true
  end
end
