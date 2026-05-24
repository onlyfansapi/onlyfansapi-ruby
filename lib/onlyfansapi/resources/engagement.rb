# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Engagement
      # @return [Onlyfansapi::Resources::Engagement::Messages]
      attr_reader :messages

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfansapi::Resources::Engagement::Messages.new(client: client)
      end
    end
  end
end
