require "rubocop_require_relative/version"
require "rubocop"

module RuboCop
  module Cop
    module Lint
      class RequireRelative < Cop
        def on_send(node)
          return unless node.to_a[1] == :require_relative
          msg = "You have a 'require_relative' statement!"
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end

