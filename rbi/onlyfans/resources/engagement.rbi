# typed: strong

module Onlyfans
  module Resources
    class Engagement
      sig { returns(Onlyfans::Resources::Engagement::Messages) }
      attr_reader :messages

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
