module Yy
  class Topic < ActiveRecord::Base

    validates :title, :content, presence: true
  end
end
