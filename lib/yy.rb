require "yy/engine"

module Yy
  mattr_accessor :user_class

  def self.user_class
    @@user_class || "User"
  end

  Rabl.configure do |config|
    config.include_json_root = false
  end
end
