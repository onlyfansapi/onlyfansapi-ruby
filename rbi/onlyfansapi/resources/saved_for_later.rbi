# typed: strong

module Onlyfansapi
  module Resources
    class SavedForLater
      sig { returns(Onlyfansapi::Resources::SavedForLater::Messages) }
      attr_reader :messages

      sig { returns(Onlyfansapi::Resources::SavedForLater::Posts) }
      attr_reader :posts

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
