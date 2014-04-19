require "yy/engine"

module Yy
  mattr_accessor :user_class

  def self.user_class
    @@user_class || "User"
  end
end
