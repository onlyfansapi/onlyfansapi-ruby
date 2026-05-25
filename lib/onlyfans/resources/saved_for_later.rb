# frozen_string_literal: true

module Onlyfans
  module Resources
    class SavedForLater
      # @return [Onlyfans::Resources::SavedForLater::Messages]
      attr_reader :messages

      # @return [Onlyfans::Resources::SavedForLater::Posts]
      attr_reader :posts

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfans::Resources::SavedForLater::Messages.new(client: client)
        @posts = Onlyfans::Resources::SavedForLater::Posts.new(client: client)
      end
    end
  end
end
