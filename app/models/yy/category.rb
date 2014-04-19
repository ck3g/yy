module Yy
  class Category < ActiveRecord::Base

    validates :name, presence: true, uniqueness: true
  end
end
