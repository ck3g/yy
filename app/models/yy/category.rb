module Yy
  class Category < ActiveRecord::Base

    has_many :topics, dependent: :nullify

    validates :name, presence: true, uniqueness: true
  end
end
