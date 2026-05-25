# frozen_string_literal: true

module Onlyfans
  module Resources
    class Engagement
      # @return [Onlyfans::Resources::Engagement::Messages]
      attr_reader :messages

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfans::Resources::Engagement::Messages.new(client: client)
      end
    end
  end
end
