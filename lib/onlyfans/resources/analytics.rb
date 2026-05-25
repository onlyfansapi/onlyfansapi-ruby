# frozen_string_literal: true

module Onlyfans
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      # @return [Onlyfans::Resources::Analytics::Financial]
      attr_reader :financial

      # APIs for retrieving summary analytics data
      # @return [Onlyfans::Resources::Analytics::Summary]
      attr_reader :summary

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @financial = Onlyfans::Resources::Analytics::Financial.new(client: client)
        @summary = Onlyfans::Resources::Analytics::Summary.new(client: client)
      end
    end
  end
end
