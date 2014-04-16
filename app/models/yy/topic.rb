module Yy
  class Topic < ActiveRecord::Base

    validates :title, presence: true, length: { minimum: 10 }
    validates :content, presence: true
  end
end
