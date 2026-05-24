# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class SavedForLater
      # @return [Onlyfansapi::Resources::SavedForLater::Messages]
      attr_reader :messages

      # @return [Onlyfansapi::Resources::SavedForLater::Posts]
      attr_reader :posts

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfansapi::Resources::SavedForLater::Messages.new(client: client)
        @posts = Onlyfansapi::Resources::SavedForLater::Posts.new(client: client)
      end
    end
  end
end
