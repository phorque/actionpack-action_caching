require "action_controller/caching/actions"

module ActionController
  module Caching
    eager_autoload do
      autoload :Actions
    end

    include Actions
  end
end

ActionController::API.send(:include, ActionController::Caching::Actions)
