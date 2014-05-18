require "yy/engine"

module Yy
  mattr_accessor :user_class, :friendly_id_translitirations

  def self.user_class
    @@user_class || "User"
  end

  def self.friendly_id_translitirations
    @@friendly_id_translitirations || :russian
  end

  Rabl.configure do |config|
    config.include_json_root = false
  end
end
