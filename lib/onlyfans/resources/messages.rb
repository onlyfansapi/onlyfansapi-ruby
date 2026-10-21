# frozen_string_literal: true

module Onlyfans
  module Resources
    class Messages
      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
