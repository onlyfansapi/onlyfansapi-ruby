# typed: strong

module Onlyfansapi
  module Resources
    class Workflows
      sig { returns(Onlyfansapi::Resources::Workflows::AccountPerformance) }
      attr_reader :account_performance

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
