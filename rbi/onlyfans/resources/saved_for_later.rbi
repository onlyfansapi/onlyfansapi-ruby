# typed: strong

module Onlyfans
  module Resources
    class SavedForLater
      sig { returns(Onlyfans::Resources::SavedForLater::Messages) }
      attr_reader :messages

      sig { returns(Onlyfans::Resources::SavedForLater::Posts) }
      attr_reader :posts

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
