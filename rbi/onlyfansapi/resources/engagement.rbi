# typed: strong

module Onlyfansapi
  module Resources
    class Engagement
      sig { returns(Onlyfansapi::Resources::Engagement::Messages) }
      attr_reader :messages

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
