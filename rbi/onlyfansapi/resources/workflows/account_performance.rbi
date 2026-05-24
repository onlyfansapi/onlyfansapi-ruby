# typed: strong

module Onlyfansapi
  module Resources
    class Workflows
      class AccountPerformance
        # @api private
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
