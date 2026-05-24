# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Workflows
      # @return [Onlyfansapi::Resources::Workflows::AccountPerformance]
      attr_reader :account_performance

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @account_performance = Onlyfansapi::Resources::Workflows::AccountPerformance.new(client: client)
      end
    end
  end
end
