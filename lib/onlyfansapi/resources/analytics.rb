# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      # @return [Onlyfansapi::Resources::Analytics::Financial]
      attr_reader :financial

      # APIs for retrieving summary analytics data
      # @return [Onlyfansapi::Resources::Analytics::Summary]
      attr_reader :summary

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @financial = Onlyfansapi::Resources::Analytics::Financial.new(client: client)
        @summary = Onlyfansapi::Resources::Analytics::Summary.new(client: client)
      end
    end
  end
end
