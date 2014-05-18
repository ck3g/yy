module Yy
  class Topic < ActiveRecord::Base
    include ::FriendlyId

    friendly_id :title, use: :slugged

    belongs_to :user, class_name: Yy.user_class
    belongs_to :category

    validates :title, presence: true, length: { minimum: 10 }
    validates :content, :user_id, presence: true

    delegate :name, to: :category, prefix: true, allow_nil: true
    delegate :display_name, to: :user, prefix: true

    def normalize_friendly_id(input)
      input.to_s.to_slug.normalize(
        translitirations: Yy.friendly_id_translitirations).to_s
    end
  end
end
